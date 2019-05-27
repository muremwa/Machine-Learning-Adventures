% this calculates cost function for a value given theta 
function [hypos, J] = costFunction(x, y,theta);
  % number of trainig examples m
  m = length(y);
  
  % calculate the hypothesis for all values of x with respect to theta
  hypos = x*theta;
  % subtract the values of y
  trim = hypos-y;
  
  % square each element and get the summation
  summed = sum(trim .^2);
  
  % multiply by 1/2m
  J = (1/(2*m))*summed;
  
##  fprintf(
##    "The cost function for theta 0 as '%d' and theta 1 as '%d' is '%d'",
##    theta(1),
##    theta(2),
##    J
##  );
  disp(J);
  
  
endfunction
