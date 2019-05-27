% predicts women unemployment rate given men's rate
function [hy] = predict(mr);
  X = [1,mr];
  p = load('parameters.txt');
  hy = X*p;
endfunction
