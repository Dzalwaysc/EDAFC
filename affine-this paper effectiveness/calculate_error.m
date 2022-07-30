k_max = 100; k_min = 8; h = 200; v_max = 4;
xi = 250000; c = 2; xita = 0.01;

varpi_1 = 300; varpi_2 = 100; varpi_3 = 10; varpi_4 = 100; varpi_5 = 100;

Omega_ff = Omega([4,5,6,7], [4,5,6,7]);
Omega_fl = Omega([4,5,6,7], [1,2,3]);

sigma_1_max = max(svds(Omega_ff));
sigma_2_max = max(svds(Omega_fl));
sigma_3_max = max(svds(inv(Omega_ff)*Omega_fl));
sigma_1_min = min(svds(Omega_ff*Omega_ff));

Xi_1 = h - 4/(2*varpi_1) - k_max*sigma_1_max - k_min^2*sigma_1_min/(2*varpi_2) ...
     - k_max*sigma_2_max/(2*varpi_3) - 1/(2*varpi_4);
 
Xi_2 = 2*k_max*sigma_1_max - 1/2*(k_min^2*sigma_1_min*varpi_2 + varpi_4 + varpi_5*sigma_3_max);

Xi_3 = v_max^2/2*(k_max*sigma_2_max*varpi_3+varpi_5^-1*sigma_3_max) + xi*exp(-c);

Theta = 2*min([Xi_1, Xi_2]);

Delta = sqrt(2*Xi_3/Theta);

len = size(tr,2);
for i=1:len
    Eta_Err_4(i,1:2) = Eta{4}(i,1:2) - desPos{4}(i,1:2);
    Eta_Err_4(i,3) = Eta{4}(i,3) - desYaw{1}(i,1);
    Norm_Err_4(i) = norm(Eta_Err_4(i,:));
    
    
    Eta_Err_5(i,1:2) = Eta{5}(i,1:2) - desPos{5}(i,1:2);
    Eta_Err_5(i,3) = Eta{5}(i,3) - desYaw{1}(i,1);
    Norm_Err_5(i) = norm(Eta_Err_5(i,:));
    
    Eta_Err_6(i,1:2) = Eta{6}(i,1:2) - desPos{6}(i,1:2);
    Eta_Err_6(i,3) = Eta{6}(i,3) - desYaw{1}(i,1);
    Norm_Err_6(i) = norm(Eta_Err_6(i,:));
    
    Eta_Err_7(i,1:2) = Eta{7}(i,1:2) - desPos{7}(i,1:2);
    Eta_Err_7(i,3) = Eta{7}(i,3) - desYaw{1}(i,1);
    Norm_Err_7(i) = norm(Eta_Err_7(i,:));
    
    Sum_Err(i,:) = [Eta_Err_4(i,:), Eta_Err_5(i,:), Eta_Err_6(i,:), Eta_Err_7(i,:)];
    Sum_Err_2(i) = Norm_Err_4(i) + Norm_Err_5(i) + Norm_Err_6(i) + Norm_Err_7(i);
    Norm_Err(i) = norm(Sum_Err(i,:));
end

Norm_Err_max = max(Norm_Err(1,:));
Norm_Err_max_2 = max(Sum_Err_2(1,:));