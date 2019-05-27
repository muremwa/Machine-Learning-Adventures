function [hypo] = predict(x1, x2);
  X = [1;x1;x2];
  theta = load('parameters.txt');
  z = theta'*X;
  hypo = sigmoid(z)
  
  if hypo < 0.5
    hypo = 0;
  else
    hypo = 1;
  endif
endfunction
