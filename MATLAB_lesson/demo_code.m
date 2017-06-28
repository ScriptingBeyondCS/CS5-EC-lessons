load cities.mat;        % the semicolon at the end of the line suppresses output,
climate = ratings(:,1); % so that your command window doesn't get cluttered :-)
plot(climate);
plot(climate, '*');
health = ratings(:,3);
figure; % creates a new figure for us to plot our new graph in!
plot(climate, health, 'o');
xlabel('climate ratings');
ylabel('health ratings');
% gname(names); % this is an optional command you can use to add names to the plot 