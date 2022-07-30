% % 轨迹图
figure(3);
plot(Eta_back{1}(:,1), Eta_back{1}(:,2), '-', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1);
hold on
plot(Eta_back{2}(:,1), Eta_back{2}(:,2), '-', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1); 
hold on
plot(Eta_back{3}(:,1), Eta_back{3}(:,2), '-', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1);
hold on;
plot(Eta_back{4}(:,1), Eta_back{4}(:,2), '--', 'Color', [0 0.4470 0.7410], 'LineWidth', 1);
hold on;
plot(Eta_back{5}(:,1), Eta_back{5}(:,2), '--', 'Color', [0.8500 0.3250 0.0980], 'LineWidth', 1);
hold on;
plot(Eta_back{6}(:,1), Eta_back{6}(:,2), '--', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1);
hold on;
plot(Eta_back{7}(:,1), Eta_back{7}(:,2), '--', 'Color', [0.4940 0.1840 0.5560], 'LineWidth', 1);
hold on;

L=1.255*4;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
B=0.5*6;
L01=0.8*4;
%% 1
m = 1;
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta_back{index1}(m,1), Eta_back{index2}(m,1)], [Eta_back{index1}(m,2), Eta_back{index2}(m,2)], 'k', 'LineWidth', 2); hold on;
end

[xx yy] = ship_contour(Eta_back{4}(m,:)',L,B,L01);
fill(xx, yy, [0 0.4470 0.7410])
[xx yy] = ship_contour(Eta_back{5}(m,:)',L,B,L01);
fill(xx, yy, [0.8500 0.3250 0.0980])
[xx yy] = ship_contour(Eta_back{6}(m,:)',L,B,L01);
fill(xx, yy,  [0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta_back{7}(m,:)',L,B,L01);
fill(xx, yy, [0.4940 0.1840 0.5560])
for k=1:3
    [xx yy] = ship_contour(Eta_back{k}(m,:)',L,B,L01);
    fill(xx, yy, [0.4660 0.6740 0.1880])
end

%% 3
m = 6000;
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta_back{index1}(m,1), Eta_back{index2}(m,1)], [Eta_back{index1}(m,2), Eta_back{index2}(m,2)], 'k', 'LineWidth', 2); hold on;
end

[xx yy] = ship_contour(Eta_back{4}(m,:)',L,B,L01);
fill(xx, yy, [0 0.4470 0.7410])
[xx yy] = ship_contour(Eta_back{5}(m,:)',L,B,L01);
fill(xx, yy, [0.8500 0.3250 0.0980])
[xx yy] = ship_contour(Eta_back{6}(m,:)',L,B,L01);
fill(xx, yy,  [0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta_back{7}(m,:)',L,B,L01);
fill(xx, yy, [0.4940 0.1840 0.5560])
for k=1:3
    [xx yy] = ship_contour(Eta_back{k}(m,:)',L,B,L01);
    fill(xx, yy, [0.4660 0.6740 0.1880])
end

%% 12
m = 11500;
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta_back{index1}(m,1), Eta_back{index2}(m,1)], [Eta_back{index1}(m,2), Eta_back{index2}(m,2)], 'k', 'LineWidth', 2); hold on;
end
[xx yy] = ship_contour(Eta_back{1}(m,:)',L,B,L01);
p1=fill(xx, yy, [0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta_back{2}(m,:)',L,B,L01);
p2=fill(xx, yy, [0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta_back{3}(m,:)',L,B,L01);
p3=fill(xx, yy, [0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta_back{4}(m,:)',L,B,L01);
p4=fill(xx, yy, [0 0.4470 0.7410])
[xx yy] = ship_contour(Eta_back{5}(m,:)',L,B,L01);
p5=fill(xx, yy, [0.8500 0.3250 0.0980])
[xx yy] = ship_contour(Eta_back{6}(m,:)',L,B,L01);
p6=fill(xx, yy,  [0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta_back{7}(m,:)',L,B,L01);
p7=fill(xx, yy, [0.4940 0.1840 0.5560])

xlabel('$x$(m)', 'interpreter', 'latex');
ylabel('$y$(m)', 'interpreter', 'latex');
% set(gcf,'Position',[100 0 860 860]);
set(gca,'Fontsize',16);
legend([p1 p4 p5 p6 p7], {'Leader', 'i=4', 'i=5', 'i=6', 'i=7'});

