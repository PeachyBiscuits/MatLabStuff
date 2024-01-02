%Star Chen 21010264

f = @(h) pi*h^2*((9-h)/3) - 30;

fDeriv = @(h) -pi*h*(h-6);

r = 3;
r1 = 0;

for i = 1 : 3
    
    r1 = r - (f(r)/fDeriv(r));
    disp(r1)
    fprintf("error = %.5f \n", abs((r1 - r)/r1)*100)
    r = r1;

end

 %The error decayed very fast, it is much faster than false position   