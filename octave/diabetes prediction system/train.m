%% train: function description
function theta = train(X, y, alpha, iter)
	init_theta = zeros(1,size(X,2));
	theta = gradientDescent(X, y, alpha, iter, init_theta);
	save parameters.txt theta;