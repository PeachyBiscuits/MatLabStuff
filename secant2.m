%Star Chen
%21010264

format long

function [y] = f1a( x )
    y = x.^2 + 1;
end

function [x2] = secant2( f, x0, x1, N_max )
    for i = 1:N_max
        x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));        
        if x1 == x2
            return;
        end

        x0 = x1;
        x1 = x2;
    end
    throw( MException( 'MATLAB:numeric_exception', ...
                'Exceeded max iterations without acceptable solution' ) );

end

