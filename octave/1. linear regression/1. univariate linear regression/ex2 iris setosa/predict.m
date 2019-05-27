% this is used to predict

function l = predict(w);

  % load the parameters
  p = load('parameters.txt');
  x = [1, w];

  % hypothesis = p*w
  l = x*p;

endfunction