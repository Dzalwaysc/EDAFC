function tao = ctrEta(index, w, D, Eta, Etad, M__, C__, D__, loop, Trig)
    err = [0, 0, 0]; errd = [0, 0, 0];
    edge_ind = find(D(index,:)~=0);
    
    for k=edge_ind
        % 寻找邻接点
        node_ind = find(D(:,k)~=0);
        j = node_ind(node_ind~=index);
        % 计算分布式误差
        Q = diag([w(k), w(k), 1]);
        err = err + (Eta{index}(loop,1:3)-Eta{j}(Trig{j}(loop),1:3))*Q';
%         errd = errd + (Etad{index}(loop,1:3)-Etad{j}(Trig{j}(loop),1:3))*Q';
    end

    K = diag([15, 15, 8]); h = 200;
    % s = errd+err*k;
    s = Etad{index}(loop, :) + err*K;
    M = reshape(M__{index}(loop,:), 3, 3);
    C = reshape(C__{index}(loop,:), 3, 3);
    D = reshape(D__{index}(loop,:), 3, 3);
%     Y = errd*C' + errd*D';
    Y = Etad{index}(loop, :) * (C'+D');
    tao = -h*s + Y;
    
    for i = 1:3
        if abs(tao(i))>500
            tao(i) = sign(tao(i))*500;
        end
    end
    if abs(tao(3))>500
        tao(3) = sign(tao(i))*500;
    end
end