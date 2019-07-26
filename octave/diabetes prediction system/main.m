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
s = (h>=0.331);
accuracy = mean(s==y)*100;

% test set error
data = load('test.txt');
X = data(:,1:8);
y = data(:,9);

X = scaling(X, mu, si);

% add bias 
X = [ones(length(y),1), X];

hy = hypothesis(X, theta);
h = hy>=0.331;
accuracy = mean(h==y)*100;

printf("Test accuracy percentage of %d\n", accuracy)

