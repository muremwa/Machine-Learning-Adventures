%% cost: function description
function J = cost(hy, y)
	% length of training set
	m = length(y);
	
	p1 = y.*log(hy);
	p2 = (1-y).*log(1-hy);
	J = (-1/m)*sum(p1+p2);
