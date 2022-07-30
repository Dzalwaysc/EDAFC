figure(2);
subplot(3,1,1)
plot(tr, Eta{4}(:,1)-desPos{4}(:,1), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(tr, Eta{5}(:,1)-desPos{5}(:,1), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(tr, Eta{6}(:,1)-desPos{6}(:,1), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(tr, Eta{7}(:,1)-desPos{7}(:,1), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$e_{i,x}$(m)','Interpreter','latex');
xlim([0,430]);
set(gca,'FontSize', 16);
legend('i=4', 'i=5', 'i=6', 'i=7');

subplot(3,1,2)
plot(tr, Eta{4}(:,2)-desPos{4}(:,2), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(tr, Eta{5}(:,2)-desPos{5}(:,2), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(tr, Eta{6}(:,2)-desPos{6}(:,2), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(tr, Eta{7}(:,2)-desPos{7}(:,2), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
ylabel('$e_{i,y}$(m)','Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);

subplot(3,1,3)
plot(tr, Eta{4}(:,3)-desYaw{1}(:,1), '-', 'LineWidth', 2, 'Color', [0 0.4470 0.7410]);
hold on
plot(tr, Eta{5}(:,3)-desYaw{1}(:,1), '-.', 'LineWidth', 2, 'Color', [0.9290 0.6940 0.1250]);
hold on
plot(tr, Eta{6}(:,3)-desYaw{1}(:,1), '--', 'LineWidth', 2, 'Color', [0.4940 0.1840 0.5560]);
hold on
plot(tr, Eta{7}(:,3)-desYaw{1}(:,1), '-.', 'LineWidth', 2, 'Color', [0.3010 0.7450 0.9330]);
hold on
xlabel('$t$(s)','Interpreter', 'latex');
ylabel('$e_{i,\varphi}$(rad)', 'Interpreter', 'latex');
xlim([0,430]);
set(gca,'FontSize', 16);
% set(gcf,'Position',[500,500,800,600]);
