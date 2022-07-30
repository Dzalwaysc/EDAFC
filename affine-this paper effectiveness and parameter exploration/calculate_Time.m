k = 100; h = 200;
xi = 250000; c = 2; xita = 0.01;

max_singular = max(svds(Omega));
len = size(tr,2);

for i=1:len
    etad_4(i) = norm(Etad{4}(i,:));
    etad_5(i) = norm(Etad{5}(i,:));
    etad_6(i) = norm(Etad{6}(i,:));
    etad_7(i) = norm(Etad{7}(i,:));
end

T_4 = sqrt(2*xi*exp(-c)/(4*(h*k*norm(diag([Omega(4,4),Omega(4,4),1]))*max(etad_4)))^2);
T_5 = sqrt(2*xi*exp(-c)/(4*(h*k*norm(diag([Omega(5,5),Omega(5,5),1]))*max(etad_5)))^2);
T_6 = sqrt(2*xi*exp(-c)/(3*(h*k*norm(diag([Omega(6,6),Omega(6,6),1]))*max(etad_6)))^2);
T_7 = sqrt(2*xi*exp(-c)/(3*(h*k*norm(diag([Omega(7,7),Omega(7,7),1]))*max(etad_7)))^2);