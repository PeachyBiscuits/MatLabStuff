%21010264 Star Chen

clear
clc

x0 = 0.5;
x1 = 1;
eps = 0.002;

fx = @(x) sin(x) - x^3;

x2 = (x0 + x1)/2;
err = abs(x0 - x1);

while err > eps
    if fx(x0)*fx(x2) < 0 
       x1 = x2;
    else
      x0 = x2;          
    end
     x2 = (x0 + x1)/2;
     err = abs(x2-x1); 
     root=x2;
     
end
   fprintf('\n The root is %4.4f ',root);