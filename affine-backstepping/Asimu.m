% clear all
%% topology graph
[r, edge, D, L, Omega, w] = affineGraph();
[n,m] = size(D);
d = size(r,2);

%% trajectory xr = Ar+b
via_ = sttraj(r, edge, m);
dt = 0.01; acc = 10;
[rTra, rTrad, rTradd, tr] = mstraj_(via_, ones(1,6), dt, acc);
[desPos, desPosd, desPosdd] = dptraj(r, rTra, rTrad, rTradd, tr);
[desYaw, desYawd, desYawdd] = dytraj(desPosd, tr, dt);

%% initial position
for i=1:3
    Eta_back{i}(1,:) = [desPos{i}(1,:), desYaw{i}(1)];
    Etad_back{i}(1,:) = [desPosd{i}(1,:), desYawd{i}(1)];
    Etadd_back{i}(1,:) = [desPosdd{i}(1,:), desYawdd{i}(1)];
end

Pos_back{4}(1,:) = [-14 13]; Yaw_back{4}(1) = 30*pi/180;
Pos_back{5}(1,:) = [0 -17]; Yaw_back{5}(1) = -30*pi/180;
Pos_back{6}(1,:) = [-25 10]; Yaw_back{6}(1) = 145*pi/180;
Pos_back{7}(1,:) = [-10 -25]; Yaw_back{7}(1) = 110*pi/180;
for i=4:7
    Eta_back{i}(1,:) = obEta(Pos_back{i}(1,:), Yaw_back{i}(1));
    V_back{i}(1,:) = zeros(1,3);
    Tao_back{i}(1,:) = zeros(1,3);
    
    [Eta_back{i}(1,:), Etad_back{i}(1,:), Etadd_back{i}(1,:), V_back{i}(1,:), C__{i}(1,:), D__{i}(1,:), M__{i}(1,:), F{i}(1,:)] = ...
            platform([Eta{i}(1,:)'; V{i}(1,:)'], Tao{i}(1,:)', dt, 0); 
end

%% simulation
loop = 0;
for t=tr(1):dt:tr(end-1)
    loop = loop+1;
    gamma1 = diag(Omega);
    gamma2 = diag(L);
        
    for i=1:3
        Eta_back{i}(loop+1,:) = [desPos{i}(loop+1,:), desYaw{1}(loop+1)]; 
        Etad_back{i}(loop+1,:) = [desPosd{i}(loop+1,:), desYawd{1}(1)];
        Etadd_back{i}(loop+1,:) = [desPosdd{i}(loop+1,:), desYawdd{1}(loop+1)];
    end        

    for i=4:7
        tao1 = ctrPos(i, w, D, gamma1, Eta_back, Etad_back, Etadd_back, F, loop);
        tao2 = ctrYaw(i, D, gamma2, Eta_back, Etad_back, Etadd_back, F, loop);        
        Tao_back{i}(loop,:) = [tao1, tao2];        
        
        [Eta_back{i}(loop+1,:), Etad_back{i}(loop+1,:), Etadd_back{i}(loop+1,:), V_back{i}(loop+1,:), C__{i}(loop+1,:), D__{i}(loop+1,:), M__{i}(loop+1,:), F{i}(loop+1,:)] = ...
            platform([Eta_back{i}(loop,:)'; V_back{i}(loop,:)'], Tao_back{i}(loop,:)', dt, t); 
    end
    fprintf('The time is %f\n', t);
end