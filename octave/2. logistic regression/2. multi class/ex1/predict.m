function p = predict(theta, X);
  
  z = X*theta';
  hy = sigmoid(z);
  [maxs, p] = max(hy');
  p = p';
endfunction
