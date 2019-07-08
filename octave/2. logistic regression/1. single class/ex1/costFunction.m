function [J, hypo] = costFunction(X, y, theta);
  m = length(y);
  z = X*theta;
  hy = sigmoid(z)
  
  % p1
  p1 = y.*log(hy)
  % p2
  p2 = (1-y).*log(1-hy);
  
  p = sum(p1+p2);
  J = (-1/m)*p;
  hypo = hy;
endfunction
