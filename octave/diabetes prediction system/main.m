clear('all');

% load the training set
data = load('train.txt');
X = data(:,1:8);
y = data(:,9);


[X, mu, si] = scale(X);

% add bias 
X = [ones(length(y),1), X];

alpha = 0.001;
iter = 15000;
theta = train(X, y, alpha, iter);
h = hypothesis(X, theta);
j = cost(h, y);
s = (h>=0.5);
accuracy = mean(s==y)*100;

printf("Trained with an accuracy percentage of %d\nCost was %d\n", accuracy, j)

