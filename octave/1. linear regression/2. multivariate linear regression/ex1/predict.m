function [hy] = predict(x1, x2);
  X = [1;x1;x2];
  theta = load('parameters.txt');
  hy = theta'*X;
endfunction
