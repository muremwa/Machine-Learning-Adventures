% plot the width aganist the width
function plotData(x, y, hypo);
  
  figure 1;
  hold on;
  x = x(:,2);
  plot(x, y, 'k+');
  xlabel('Sepal width in cm');
  ylabel('Sepal length in cm');
  
  plot(x, hypo, 'b');
  
  
endfunction
