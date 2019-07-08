%% hypothesis: takes in a matrix of features and returns the hypothesis
function hy = hypothesis(X, theta)
	z = X*theta';
	hy = sigmoid(z);
