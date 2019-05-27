data = load('data.txt');

X = data(:,[1,2]);
y = data(:,3);
%plotData(X, y);
X = [ones(length(y), 1), X];
init = zeros(3,1);
para = gradientDescent(X, y, init, 0.00001, 150000);
##para = init;
[J, hypo] = costFunction(X, y, para);
save -text parameters.txt para;
clear;