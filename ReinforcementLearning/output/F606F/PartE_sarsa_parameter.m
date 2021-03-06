% Testing alpha and ep
cliffworld;
[v, pi, all] = sarsa(model,1000,50000,...
                    'constant',0.5,...
                    'constant',0.1);
[v2, pi2, all2] = sarsa(model,1000,50000,...
                    'constant',0.2,...
                    'constant',0.1);
[v3, pi3, all3] = sarsa(model,1000,50000,...
                    'constant',0.05,...
                    'constant',0.1);
[v4, pi4, all4] = sarsa(model,1000,50000,...
                    'constant',0.0001,...
                    'constant',0.1);
figure(1);subplot(2,1,1);plot(all);hold on;
plot(all2);plot(all3);plot(all4);hold off;

legend('\alpha = 0.5','\alpha = 0.2',...
        '\alpha = 0.05',...
        '\alpha = 0.0001')
title('sarsa with \epsilon = 0.1')
ylim([-10000,0])
ylabel('accumulated rewards sum per episode')
xlabel('\times 100 episodes')

[v5, pi5, all5] = sarsa(model,1000,50000,...
                    'constant',0.1,...
                    'constant',0.5);
[v6, pi6, all6] = sarsa(model,1000,50000,...
                    'constant',0.1,...
                    'constant',0.2);
[v7, pi7, all7] = sarsa(model,1000,50000,...
                    'constant',0.1,...
                    'constant',0.05);
[v8, pi8, all8] = sarsa(model,1000,50000,...
                    'constant',0.1,...
                    'constant',0.0001);
subplot(2,1,2);plot(all5);hold on;
plot(all6);plot(all7);plot(all8);hold off;

legend('\epsilon = 0.5','\epsilon = 0.2',...
        '\epsilon = 0.05',...
        '\epsilon = 0.0001')
title('sarsa with \alpha = 0.1')
ylim([-10000,0])
ylabel('accumulated rewards sum per episode')
xlabel('\times 100 episodes')
