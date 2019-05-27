% calculate the cost function given a theta
function [J, hypos] = costFunction(X, y, theta);
  
  m = length(y);
  
  % get all predictions
  hypos = X*theta;
  tr = hypos-y;
  summed = sum(tr.^2);
  J = (1/(2*m))*summed;
  
endfunction
