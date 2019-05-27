% implement the gradient descent algorithm 
% update theta for 'iter' times
function theta = gradientDescent(x, y, theta, l_rate, iter);
  
  % number of traning examples m
  m = length(y);
  
  % run a loop to update theta
  for i = 1:iter
    disp(i);
    % get all the hypothesis
    [hy, ~] = costFunction(x, y, theta);
    trans = hy-y;
    trx = trans.*x;
    summed = sum(trx);
    upd = l_rate*(1/m)*summed';
    theta = theta-upd;
  endfor
endfunction
