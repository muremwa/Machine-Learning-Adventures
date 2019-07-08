%% gradientDescent: function description
function final_theta = gradientDescent(X, y, alpha, iter, theta)
	m = length(y);

	for i=1:iter
		hy = hypothesis(X, theta);
		g = alpha*sum((hy-y).*X);
		theta = theta - g;
	end

	final_theta = theta;

	
