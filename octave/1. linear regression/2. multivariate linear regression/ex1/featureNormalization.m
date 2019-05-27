function [X, y] = featureNormalization();
  m = length(X);
  ft = X(:,1);
  mu = sum(ft)/m;
  s = max(ft)-min(ft);
  
  for i = 1:m
    num = ft(i,1);
    new = (num-mu)/s;
    X(i,1) = new;
  endfor
  
endfunction
