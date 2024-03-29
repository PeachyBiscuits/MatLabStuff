%Star Chen
%21010264
%Secant Script

format long


function [x2] = secant( f, x0, x1 )
    while true
        x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0))        
        if x1 == x2
            return;
        end

        x0 = x1;
        x1 = x2;
    end
end

