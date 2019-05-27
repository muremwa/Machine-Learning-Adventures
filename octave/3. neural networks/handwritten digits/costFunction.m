function [J, grad] = costFunction(X, y, theta, in, hid, k, lambda);
  m = length(y);
  J = 0;
  theta1 = reshape(theta(1:(hid*(in+1))), hid, (in+1));
  theta2 = reshape(theta(((hid*(in+1))+1):end),k,(hid+1));
  theta1grad = zeros(size(theta1));
  theta2grad = zeros(size(theta2));
  
  % foward propagation to calculate the hypothesis
  z2 = [ones(m, 1), X]*theta1';
  a2 = sigmoid(z2);
  z3 = [ones(size(a2,1),1),a2]*theta2';
  a3 = sigmoid(z3);
  [max1, max2] = max(a3');
  hypo = max2';
  
  % loop to accumulate the cost function
  ys = [1:k]';
  p = 0;

  for i = 1:m
    yi = (ys == y(i));
    hx = a3(i,:)';
    
    p1 = yi.*log(hx);
    p2 = (1-yi).*log(1-hx);
    p = p+sum(p1+p2);
  endfor
  J = (-1/m)*p;
  
  % regularization
  regTheta1 = theta1(:,2:end).^2;
  regTheta2 = theta2(:,2:end).^2;
  s = sum(sum(regTheta1))+sum(sum(regTheta2));
  regTerm = (lambda/(2*m))*s;
  J = J+regTerm;
  
  % gradient calculation
  % apparently all theta in the network require a gradient that's later unrolled
  % into one giant gradient to feed into an optimization function
  t1 = zeros(size(theta1));
  t2 = zeros(size(theta2));
  
  for i = 1:m
    yi = (ys == y(i));
    a1 = [1 X(i,:)];
    z2 = theta1*a1';
    a2 = [1;sigmoid(z2)];
    z3 = theta2*a2;
    a3 = sigmoid(z3);
    delta3 = a3-yi;
    delta2 = theta2'*delta3.*sigmoidGradient([1;z2]);
    t1 = t1+(delta2(2:end)*a1);
    t2 = t2+(delta3*a2');
  endfor
  
  theta1grad = (1/m)*t1;
  theta2grad = (1/m)*t2;
  grad = [theta1grad(:);theta2grad(:)];
endfunction


















