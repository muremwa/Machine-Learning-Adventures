function plotData(X, y, hy);
  
  figure 1;
  hold on;
  plot(X(:,2), y, 'k+');
  xlabel('unemployment rate for men');
  ylabel('unemployment rate for women');
  plot(X(:,2), hy,'b');
  hold off;
  
endfunction
