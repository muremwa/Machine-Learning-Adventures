load('data.mat');
load('weights.mat');
X = [ones(length(y),1), X];

z2 = X*Theta1';
a2 = sigmoid(z2);
a2 = [ones(length(y),1), a2];

z3 = a2*Theta2';
prehypo = sigmoid(z3);

[prop, hypo] = max(prehypo');
hypo = hypo';

mean(double(hypo == y))*100