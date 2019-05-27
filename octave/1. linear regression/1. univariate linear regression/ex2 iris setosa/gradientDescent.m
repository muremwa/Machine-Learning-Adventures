% implement the gradient descent
function [theta costs] = gradientDescent(x, y, theta, iter, l_rate);
  m = length(y);
  costs = zeros(iter, 2);
  
  for i = 1:iter
    [co, hy] = costFunction(x, y, theta);
    theta1 = theta(2);
    costs(i,:) = [theta1, co];
    br = hy-y;
    brx = br.*x;
    summed = sum(brx);
    upd = l_rate*(1/m)*summed';
    theta = theta-upd;
  endfor
  
  figure 2;
  plot(costs(:,1), costs(:,2));
  xlabel('theta 1');
  ylabel('cost');
endfunction
