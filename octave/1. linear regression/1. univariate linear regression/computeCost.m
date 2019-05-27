function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


% add the extra column for x0

% calculate hypothesis returning a m dimensional vector
predictions = X*theta;
% minus y from predictions
spam = predictions - y;
% square the diffrences 
squared = spam .^ 2;
% add all of them together
sumed = sum(squared);

% final action
J = (1/(2*m))*sumed;


% =========================================================================

end
