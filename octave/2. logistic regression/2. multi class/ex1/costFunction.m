function [J, grad] = costFunction(X,y,theta,lambda);
  m = length(y);
  z = X*theta;
  hypo = sigmoid(z);
  p1 = y.*log(hypo);
  p2 = (1-y).*log(1-hypo);
  p = sum(p1+p2);
  J = (-1/m)*p;
  regTheta = [0; theta(2:end,1)];
  sq = regTheta.^2;
  sm = sum(sq);
  regTerm = (lambda/(2*m))*sm;
  J = J+regTerm;
  
  hy = hypo-y;
  hx = hy.*X;
  s = sum(hx);
  grad = (1/m).*s' + (lambda/m)*regTheta;
endfunction
