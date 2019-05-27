% implement graddint descent
function theta = gradientDescent(X, y, theta, alpha, iter);
  m = length(y);
  p = zeros(m, 2);
  disp('training model...');
  for i = 1:iter
    [J, hy] = costFunction(X, y, theta);
    p(i,:) = [theta(2), J];
    br = hy-y;
    brx = br.*X;
    s = sum(brx);
    upd = alpha*(1/m)*s';
    theta = theta-upd;
  endfor
  disp('training complete');  
  figure 2;
  plot(p(:,1), p(:,2));
  xlabel('Theta 1');
  ylabel('Cost function J');
endfunction
