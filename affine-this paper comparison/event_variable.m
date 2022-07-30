function flag = event_variable(index, w, W, Eta, Trig, loop, t)
    edge_ind = find(W(index,:)~=0);       
    trig_loop = Trig{index}(loop);
    err = 0;
    trig_err = Eta{index}(trig_loop,1:3) - Eta{index}(loop,1:3);

    for i=edge_ind
        node_ind = find(W(:,i)~=0);
        j = node_ind(node_ind~=index);
        Q = diag([w(i),w(i),1]);
        err = err+norm(trig_err*Q')^2;
    end
    k = 100; h = 200;
    xi = 25000; c = 2; xita = 0.01;
    f = (k*h)^2/2*err - xi*exp(-c*tanh(xita*t));
    % f = (k*h)^2/2*err - xi;
    if f>=0
        flag = 1;
    else
        flag = 0;
    end
%     flag = 1;
end