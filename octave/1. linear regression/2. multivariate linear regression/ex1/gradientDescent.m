function theta = gradientDescent(X, y, theta, l_rate, iter);
  m = length(y);
  
  for i = 1:iter
    [J, hy] = costFunction(X, y, theta);
    disp(J);
    hmy = hy-y;
    hx = hmy.*X;
    summed = sum(hx);
    upd = l_rate*(1/m)*summed';
    theta = theta-upd;
  endfor
  
endfunction
