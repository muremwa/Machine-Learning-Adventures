function plotData(X, y);
  
  y1 = X(y==1,[1,2]);
  y2 = X(y==0,[1,2]);
  figure 1;
  hold on;
  plot(y1(:,1), y1(:,2), 'ko');
  plot(y2(:,1), y2(:,2), 'k+');
  xlabel('feature 1');
  ylabel('feature 2');
  hold off;
endfunction
