% this is the main script

% load up the setosa values x = width, y = length
data = load('data.txt');
x = data(:,1);
m = length(x);
x = [ones(m,1), x];
y = data(:,2);

initial_theta = zeros(2,1);

i = 20000;
rate = 0.06;

theta = gradientDescent(x, y, initial_theta, i, rate);
% cost function
[co, hy] = costFunction(x, y, theta);
disp(co);
% plot the data for visualisation
plotData(x, y, hy);

save -text parameters.txt theta;

clear;