% train the model to predict female unemployment given the male rate

% load the data set for training
data = load('data.txt');
x = data(:,1);
y = data(:,2);
X = [ones(length(x),1) x];

% calculate the cost function for this theta
initial_theta = [0; 0];

theta = gradientDescent(X, y, initial_theta, 0.006, 11000);
save -text parameters.txt theta;
[J, hy] = costFunction(X, y, theta);

plotData(X, y, hy);

clear;