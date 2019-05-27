function plotData(x, y, hy)
  
  figure 1;
  hold on;
  plot(x,y, 'k+');
  xlabel('Size in feet squared');
  ylabel('Price in 1000 $');  
  plot(x, hy);
endfunction
