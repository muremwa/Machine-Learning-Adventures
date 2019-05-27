data = load('data.txt');

X = data(:,[1,2]);
y = data(:,3);
bias = ones(length(y), 1);
##X = featureNormalization(X);
X = [bias, X]
init = zeros(3,1);
a = 0.1;
para = gradientDescent(X, y, init, a, 10000000);
[J, hypo] = costFunction(X, y, para)
save -text parameters.txt para;
clear;