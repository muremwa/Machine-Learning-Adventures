function alltheta = train(X, y, K, lambda);
  m = length(y);
  n = size(X, 2);
  alltheta = zeros(K, n);

  for c = 1:K
    init = zeros(n, 1);
    options = optimset('GradObj', 'on', 'MaxIter', 50);
    theta = fmincg (@(t)(costFunction(X, (y == c), t, lambda)), init, options);
    alltheta(c,:) = theta';
  endfor

endfunction
