%% 性能指标计算，把误差累加
for i=1:7
    Eta_Err{i} = [desPos{i},desYaw{1}]-Eta{i};
    Etad_Err{i} = [(desPosd{1}+desPosd{2}+desPosd{3}+desPosd{4}+desPosd{5}+desPosd{6}+desPosd{7})/7,...
                    (desYawd{1}+desYawd{2}+desYawd{3}+desYawd{4}+desYawd{5}+desYawd{6}+desYawd{7})/7] - Etad{i};
end


len = size(Eta_Err{i},1); IAE = 0;
for i=1:len-1
    IAE = IAE + norm([Eta_Err{4}(i,:), Eta_Err{5}(i,:), Eta_Err{6}(i,:), Eta_Err{7}(i,:)]);
    if i == 4000
        IAE4000 = IAE;
    elseif i == 8000
        IAE8000 = IAE-IAE4000;
    elseif i == 11000
        IAE11000 = IAE-IAE8000-IAE4000;
    end
end

Trig4 = unique(Trig{4}); 
Trig5 = unique(Trig{5});
Trig6 = unique(Trig{6});
Trig7 = unique(Trig{7});

Trig4_4000 = size(Trig4(find(Trig4<4000&Trig4>=0)),2);
Trig5_4000 = size(Trig5(find(Trig5<4000&Trig5>=0)),2);
Trig6_4000 = size(Trig6(find(Trig6<4000&Trig6>=0)),2);
Trig7_4000 = size(Trig7(find(Trig7<4000&Trig7>=0)),2);

Trig_4000 = log(Trig4_4000 + Trig5_4000 + Trig6_4000 + Trig7_4000)+log(3*8);

Trig4_8000 = size(Trig4(find(Trig4<8000&Trig4>=4000)),2);
Trig5_8000 = size(Trig5(find(Trig5<8000&Trig5>=4000)),2);
Trig6_8000 = size(Trig6(find(Trig6<8000&Trig6>=4000)),2);
Trig7_8000 = size(Trig7(find(Trig7<8000&Trig7>=4000)),2);

Trig_8000 = log(Trig4_8000 + Trig5_8000 + Trig6_8000 + Trig7_8000)+log(3*8);

Trig4_11000 = size(Trig4(find(Trig4<11000&Trig4>=8000)),2);
Trig5_11000 = size(Trig5(find(Trig5<11000&Trig5>=8000)),2);
Trig6_11000 = size(Trig6(find(Trig6<11000&Trig6>=8000)),2);
Trig7_11000 = size(Trig7(find(Trig7<11000&Trig7>=8000)),2);

Trig_11000 = log(Trig4_11000 + Trig5_11000 + Trig6_11000 + Trig7_11000)+log(3*8);

for i=1:len-1
    final_Eta_err(i) = norm([Eta_Err{4}(i,:),Eta_Err{5}(i,:),Eta_Err{6}(i,:),Eta_Err{7}(i,:)]);
    final_Etad_err(i) = norm([Etad_Err{4}(i,:),Etad_Err{5}(i,:),Etad_Err{6}(i,:),Etad_Err{7}(i,:)]);
end

final_Eta_err_1 = norm(Eta_Err{4}(10000,:)) + norm(Eta_Err{5}(10000,:)) + norm(Eta_Err{6}(10000,:)) + norm(Eta_Err{7}(10000,:));
final_Etad_err_1 = norm(Etad_Err{4}(10000,:)) + norm(Etad_Err{5}(10000,:)) + norm(Etad_Err{6}(10000,:)) + norm(Etad_Err{7}(10000,:));


