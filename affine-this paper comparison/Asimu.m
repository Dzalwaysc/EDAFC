clear all
%% topology graph
[r, edge, W, L, Omega, w] = affineGraph();
[n,m] = size(W);
d = size(r,2);

%% trajectory xr = Ar+b
via_ = sttraj(r, edge, m);
dt = 0.01; acc = 10;
[rTra, rTrad, rTradd, tr] = mstraj_(via_, ones(1,6), dt, acc);
[desPos, desPosd, desPosdd] = dptraj(r, rTra, rTrad, rTradd, tr);
[desYaw, desYawd, desYawdd] = dytraj(desPosd, tr, dt);
% verify_desPos(desPos, desPosd, desPosdd, tr, dt);
% verify_desYaw(desPos, desYaw, desYawd, desYawdd, tr, dt);

%% initial position
for i=1:3
    Eta{i}(1,:) = [desPos{i}(1,:), desYaw{i}(1)];
    Etad{i}(1,:) = [desPosd{i}(1,:), desYawd{i}(1)];
    Trig{i}(1) = 1;
end

% eta4 = (-1.5231, 1.7593) eta5 = (0.5822, -0.0821) eta6=(0.5573, 0.1789)
Pos{4}(1,:) = [-14 13]; Yaw{4}(1) = 30*pi/180;
Pos{5}(1,:) = [0 -17]; Yaw{5}(1) = -30*pi/180;
Pos{6}(1,:) = [-25 10]; Yaw{6}(1) = 145*pi/180;
Pos{7}(1,:) = [-10 -25]; Yaw{7}(1) = 110*pi/180;
for i=4:7
    Eta{i}(1,:) = obEta(Pos{i}(1,:), Yaw{i}(1));
    V{i}(1,:) = zeros(1,3);
    Tao{i}(1,:) = zeros(1,3);
    Trig{i}(1) = 1;
    [Eta{i}(1,:), Etad{i}(1,:),V{i}(1,:), ...
         C__{i}(1,:), D__{i}(1,:), M__{i}(1,:)] = ...
            platform([Eta{i}(1,:), V{i}(1,:)]', Tao{i}(1,:)', dt, 0);     
end

%% simulation
loop = 0;
for t=tr(1):dt:tr(end-1)
    loop = loop+1;        
    for i=1:3
        Eta{i}(loop+1,:) = [desPos{i}(loop+1,:), desYaw{1}(loop+1)]; 
        Etad{i}(loop+1,:) = [desPosd{i}(loop+1,:), desYawd{1}(loop+1)];
        Trig{i}(loop+1) = loop+1;
    end
    for i=4:7
        flag = event_variable(i, w, W, Eta, Trig, loop, t);
        if flag == 1
            Trig{i}(loop+1) = loop+1;
        else
            Trig{i}(loop+1) = Trig{i}(loop);
        end
        tao = ctrEta(i, w, W, Eta, Etad, C__, D__, M__, loop, Trig);      
        Tao{i}(loop+1,:) = tao;        
        
        [Eta{i}(loop+1,:), Etad{i}(loop+1,:), V{i}(loop+1,:), ...
         C__{i}(loop+1,:), D__{i}(loop+1,:), M__{i}(loop+1,:)] = ...
            platform([Eta{i}(loop,:), V{i}(loop,:)]', Tao{i}(loop+1,:)', dt, t);       
    end
    
    fprintf("time is %f\n", t);
end
verify_resPos(Eta, edge, tr, 2000, 2000);