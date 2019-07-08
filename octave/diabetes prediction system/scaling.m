%% scaling: function description
function X = scaling(X, mu, si)
	for i=1:size(X,2)
		X(:,i) = (X(:,i)-mu(:,i))/si(:,i);
	end
	
