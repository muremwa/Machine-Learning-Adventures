%% sigmoid: returns the sigmoid of a vector
function g = sigmoid(z)
	g = 1./(1+exp(-z));
