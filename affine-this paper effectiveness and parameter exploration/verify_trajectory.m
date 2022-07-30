figure(2);

% 绘制轨迹线
P1 = plot(Eta{1}(:,1), Eta{1}(:,2),'-', 'LineWidth',0.7, 'color', [0.4660 0.6740 0.1880]); hold on;
P2 = plot(Eta{2}(:,1), Eta{2}(:,2),'-', 'LineWidth',0.7, 'color', [0.4660 0.6740 0.1880]); hold on;
P3 = plot(Eta{3}(:,1), Eta{3}(:,2),'-', 'LineWidth',0.7, 'color', [0.4660 0.6740 0.1880]); hold on;
P4 = plot(Eta{4}(:,1), Eta{4}(:,2),'-.', 'LineWidth',0.7, 'color', [0 0.4470 0.7410]); hold on;
P5 = plot(Eta{5}(:,1), Eta{5}(:,2),'-.', 'LineWidth',0.7, 'color', [0.9290 0.6940 0.1250]); hold on;
P6 = plot(Eta{6}(:,1), Eta{6}(:,2),'-.', 'LineWidth',0.7, 'color', [0.4940 0.1840 0.5560]); hold on;
P7 = plot(Eta{7}(:,1), Eta{7}(:,2),'-.', 'LineWidth',0.7, 'color',  [0.3010 0.7450 0.9330]); hold on;

xlabel('$x$(m)', 'Interpreter', 'latex');
ylabel('$y$(m)', 'Interpreter', 'latex');
set(gca,'FontSize', 16);

axis equal

L=7.255;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
B=5;
L01=5.0;    

%% 1
m = 1;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta{index1}(m,1), Eta{index2}(m,1)], ...
         [Eta{index1}(m,2), Eta{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end
% [0.3010 0.7450 0.9330] [0.9290 0.6940 0.1250] [0.4940 0.1840 0.5560] [0.6350 0.0780 0.1840]
% 绘制内置无人艇
[xx yy] = ship_contour(Eta{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Eta{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Eta{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

%% 2
m = 7000;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta{index1}(m,1), Eta{index2}(m,1)], ...
         [Eta{index1}(m,2), Eta{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Eta{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Eta{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Eta{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

%% 3
m = 12000;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta{index1}(m,1), Eta{index2}(m,1)], ...
         [Eta{index1}(m,2), Eta{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Eta{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Eta{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Eta{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

%% 4
m = 16000;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta{index1}(m,1), Eta{index2}(m,1)], ...
         [Eta{index1}(m,2), Eta{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Eta{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Eta{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Eta{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

%% 5
m = 22000;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta{index1}(m,1), Eta{index2}(m,1)], ...
         [Eta{index1}(m,2), Eta{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Eta{1}(m,:)', L, B, L01);
P1 = fill(xx,yy,[0.4660 0.6740 0.1880]);
[xx yy] = ship_contour(Eta{2}(m,:)', L, B, L01);
P2 = fill(xx,yy,[0.4660 0.6740 0.1880]);
[xx yy] = ship_contour(Eta{3}(m,:)', L, B, L01);
P3 = fill(xx,yy,[0.4660 0.6740 0.1880]);
[xx yy] = ship_contour(Eta{4}(m,:)', L, B, L01);
P4 = fill(xx,yy,[0 0.4470 0.7410]);
[xx yy] = ship_contour(Eta{5}(m,:)', L, B, L01);
P5 = fill(xx,yy,[0.9290 0.6940 0.1250]);
[xx yy] = ship_contour(Eta{6}(m,:)', L, B, L01);
P6 = fill(xx,yy,[0.4940 0.1840 0.5560]);
[xx yy] = ship_contour(Eta{7}(m,:)', L, B, L01);
P7 = fill(xx,yy,[0.3010 0.7450 0.9330]);
hold on;

%% 6
m = 28000;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta{index1}(m,1), Eta{index2}(m,1)], ...
         [Eta{index1}(m,2), Eta{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Eta{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Eta{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Eta{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

%% 7
m = 36000;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta{index1}(m,1), Eta{index2}(m,1)], ...
         [Eta{index1}(m,2), Eta{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Eta{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Eta{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Eta{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

%% 8
m = 40000;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta{index1}(m,1), Eta{index2}(m,1)], ...
         [Eta{index1}(m,2), Eta{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Eta{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Eta{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Eta{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

%% 9
m = 44500;
% 绘制连接线
for j=1:size(edge,2)
    index1 = edge(1,j); index2 = edge(2,j);
    plot([Eta{index1}(m,1), Eta{index2}(m,1)], ...
         [Eta{index1}(m,2), Eta{index2}(m,2)], 'k', 'LineWidth', 2);
    hold on;
end

% 绘制内置无人艇
[xx yy] = ship_contour(Eta{1}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{2}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{3}(m,:)', L, B, L01);
fill(xx,yy,[0.4660 0.6740 0.1880])
[xx yy] = ship_contour(Eta{4}(m,:)', L, B, L01);
fill(xx,yy,[0 0.4470 0.7410])
[xx yy] = ship_contour(Eta{5}(m,:)', L, B, L01);
fill(xx,yy,[0.9290 0.6940 0.1250])
[xx yy] = ship_contour(Eta{6}(m,:)', L, B, L01);
fill(xx,yy,[0.4940 0.1840 0.5560])
[xx yy] = ship_contour(Eta{7}(m,:)', L, B, L01);
fill(xx,yy,[0.3010 0.7450 0.9330])
hold on;

xx = [330, 360, 490, 460];
yy = [310, 280, 410, 440];
fill(xx,yy, [0.64,0.08,0.18])

hold on;
legend([P1 P4 P5 P6 P7],{'Leader(i=1,2,3)', 'i=4', 'i=5', 'i=6', 'i=7'});