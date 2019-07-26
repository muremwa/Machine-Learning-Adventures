clear('all');
% train the model with the same alpha and iterations but change the amount of m by ten each time
alpha = 0.001;
iter = 15000;

cut = [230:10:570];
train_error = zeros(1,length(cut));
cv_error = zeros(1,length(cut));

% load train data
data = load('data.txt');
Xmain = data(:,1:8);
ymain = data(:,9);


% loop adding 10 more examples to the training set
for i=1:length(cut)
	pt = cut(:,i);
	% training data
	X = Xmain(1:pt,:);
	y = ymain(1:pt,:);

	% scale data
	[X, mu, si] = scale(X);

	% add bias value
	X = [ones(length(y),1), X];

	% train and get the train error
	theta = train(X, y, alpha, iter);
	hy = hypothesis(X, theta);
	train_error(:,i) = cost(hy, y);

	% cross validation error
	[cv_error(:,i), ~] = errorAnalysis(theta, mu, si, 0.5);

	printf(".");
end

% plot the errors 
hold on;
plot(cut, train_error, 'm');
plot(cut, cv_error, 'g');
xlabel('training examples');
ylabel('errors');
legend('training error', 'cross validation error');
title('examples learning curves');
hold off;
printf("\n");