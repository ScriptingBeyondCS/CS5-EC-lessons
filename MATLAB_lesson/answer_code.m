load cities.mat;
health = ratings(:,3);
arts = ratings(:,7);
plot(health, arts, '*');
xlabel('health ratings');
ylabel('arts ratings');
fit_line = fit(health, arts, 'poly1');
hold on;
plot(fit_line);