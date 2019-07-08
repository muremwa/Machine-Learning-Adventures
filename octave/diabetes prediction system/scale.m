%% scale: function description
function [XS, mu, s] = scale(X)
	% returns values correctly
	f = size(X);
	XS = zeros(f);
	mu = zeros(1,f(2));
	s = zeros(1,f(2));

	% loop through all features and scale
	for i=1:f(2);
		x = X(:,i);
		mi = mean(x);
		si = max(x)-min(x);
		nx = (x-mi)/si;
		mu(:,i) = mi;
		s(:,i) = si;
		XS(:,i) = nx;
	end
	save mu.txt mu;
	save si.txt s;