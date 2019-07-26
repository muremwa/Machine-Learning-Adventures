clear('all');
% vary the threshhold and check the f1 score
th = [0.3:0.001:0.8];
fscores = zeros(size(th));

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
hy = hypothesis(X, theta);

for i=1:length(th)
	hx = hy>=th(i);
	[fscores(i), ~, ~] = fscore(y, hx);
end

hold on;
plot(th, fscores);
xlabel('threshholds');
ylabel('f1 score');
hold off;

[mx, mxi] = max(fscores);

[J, acc] = errorAnalysis(theta, mu, si, th(mxi));

printf("\tbest f score with threshhold of %d scoring %d\n\tcost = %d\n\taccuracy = %d\n", th(mxi), mx, J, acc);
