%Star Chen
%21010264
%Secant Script

format long

secant( @f1b, 0.000722, 0.0007221, 1e-4, 100 )

function [y] = f1a( x )
    y = x.^2 + 1;
end

function [y] = f1b( x )
    y = cos(1./x);
end


function [x2] = secant( f, x0, x1, eps_step, N_max )
    for i = 1:N_max
        x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));        
        if abs( x2 - x1 ) < eps_step
            return;
        end

        x0 = x1;
        x1 = x2;
    end

end

