clear;
load('data.mat');
inL = 400;
hidL=25;
outL=10;
lambda= 1;
e_init = 0.12;
Theta1 = rand(hidL, (inL+1))*2*e_init-e_init;
Theta2 = rand(outL, (hidL+1))*2*e_init-e_init;
un_theta = [Theta1(:);Theta2(:)];
[cost, grad] = costFunction(X, y, un_theta, inL, hidL, outL, lambda);

options = optimset('MaxIter', 50);
costFunction = @(p) costFunction(X, y, p, inL, hidL, outL, lambda);
[nn_params, cost] = fmincg(costFunction, un_theta, options);

theta1 = reshape(nn_params(1:(hidL*(inL+1))), hidL, (inL+1));
theta2 = reshape(nn_params(((hidL*(inL+1))+1):end),outL,(hidL+1));
pred = predict(theta1, theta2, X);
mean(double(pred == y)) * 100