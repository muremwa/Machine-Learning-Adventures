load('data.mat');
X = [ones(length(y), 1), X];
theta = zeros(size(X)(:,2), 1);
##theta = [-2;-1;1;2];
##X = [ones(5,1) reshape(1:15,5,3)/10];
##y = ([1;0;1;0;1] >=0.5);
##[J, grad] = costFunction(X,y,theta, 3);

K = 10;
lambda = 0.1;
allth = train(X, y, K, lambda);
pred = predict(allth, X);