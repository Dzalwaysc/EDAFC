figure(4);

Trig4 = unique(Trig{4}); Trig4d = diff(Trig4/100);
Trig5 = unique(Trig{5}); Trig5d = diff(Trig5/100);
Trig6 = unique(Trig{6}); Trig6d = diff(Trig6/100);
Trig7 = unique(Trig{7}); Trig7d = diff(Trig7/100);

figure(4);
bar(Trig4(1:end-1)/100, Trig4d); hold on
scatter(Trig4(1:end-1)/100, Trig4d, 'o');
xlabel('$t$(s)', 'Interpreter', 'latex');
ylabel('Triggering interval(s)');
set(gca,'FontSize', 16);

figure(5);
bar(Trig5(1:end-1)/100, Trig5d); hold on
scatter(Trig5(1:end-1)/100, Trig5d, 'o');
xlabel('$t$(s)', 'Interpreter', 'latex');
ylabel('Triggering interval(s)');
set(gca,'FontSize', 16);

figure(6);
bar(Trig6(1:end-1)/100, Trig6d); hold on
scatter(Trig6(1:end-1)/100, Trig6d, 'o');
xlabel('$t$(s)', 'Interpreter', 'latex');
ylabel('Triggering interval(s)');
set(gca,'FontSize', 16);

figure(7);
bar(Trig7(1:end-1)/100, Trig7d); hold on
scatter(Trig7(1:end-1)/100, Trig7d, 'o');
xlabel('$t$(s)', 'Interpreter', 'latex');
ylabel('Triggering interval(s)');
set(gca,'FontSize', 16);