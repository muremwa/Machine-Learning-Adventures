function [hypo] = sigmoid(z);
  hypo = 1./(1+exp(-z));
endfunction
