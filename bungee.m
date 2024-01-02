%21010264 Star Chen

clear
clc

g = 9.81;
t = 4;
cd = 0.25;
vMax = 36;

x0 = 100;
x1 = 200;
eps = 0.0001;

fm = @(m) sqrt(g.*m./cd).*tanh(sqrt(g.*cd./m).*t) - vMax;
fplot (fm, [x0, x1])

x2 = (x0 + x1)/2;
err = abs(x0 - x1);

while err > eps
    if fm(x0)*fm(x2) < 0 
       x1 = x2;
    else
      x0 = x2;          
    end
     x2 = (x0 + x1)/2;
     err = abs(x2-x1); 
     root=x2;
     
end
   fprintf('\n The root is %4.4f ',root);