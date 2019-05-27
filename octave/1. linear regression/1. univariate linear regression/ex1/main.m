% this is the main script for the ###

data = load('data.txt');
x = data(:,1);
m = length(x);
x = [ones(m,1), x];
y = data(:,2);


% initial_theta = [-40; 0.2];
% initial_theta = [-50; 0.25];
initial_theta = [0; 0];


% run gradient descent
learning_rate = 0.0000001;
number_of_iterations = 20;

final = gradientDescent(x, y, initial_theta, learning_rate, number_of_iterations);

disp("final theta below");
disp(final);
[hypos, cost] = costFunction(x, y, final);
save parameters.txt final;
plotData(x, y, hypos);


clear;