function theta = gradientDescent(X, y, theta, rate, iter);
  m = length(y);
  
  for i = 1:iter
    [J, hypo] = costFunction(X, y, theta);
    disp(J);
    z = X*theta;
    hy = sigmoid(z);
    hmy = hy-y;
    mx = hmy.*X;
    summed = sum(mx);
    upd = rate*summed';
    theta = theta-upd;
  endfor
endfunction
