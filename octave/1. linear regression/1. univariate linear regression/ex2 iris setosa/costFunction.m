% this scrips calculates the cost function 
function [J, hypo] = costFunction(x, y, theta);
  
  % m = length of y
  m = length(y);
  
  % hypothesis
  hypo = x*theta;
  
  trans = hypo - y;
  trans = trans.^2;
  
  J = (1/(2*m))*sum(trans);
endfunction
