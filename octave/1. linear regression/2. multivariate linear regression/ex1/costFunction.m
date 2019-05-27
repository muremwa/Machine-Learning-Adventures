function [J, hypo] = costFunction(X, y, theta);
  m = length(y);
  
  hypo = X*theta;
  hmy = hypo-y;
  sq = hmy.^2;
  summed = sum(sq);
  J = (1/(2*m))*summed;
endfunction
