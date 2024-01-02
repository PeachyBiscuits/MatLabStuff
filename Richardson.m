% richardson22
% Copy the description from 2.1 here
%
% Parameters
% ==========
%    D: The function D takes a function u and two real-values, x and h, and provides the 2nd order center divided-difference at x. It approximates the 1st order derivative of the function u at x.
%    u: The function u is a real-valued function of a real variable x.
%
%    x: Is any Real number
%    h: Is any Real positive number, can not equal 0
%
%    N_max: The maximum number of iterations for the loop, and the parameter for the approximations matrix.
%    eps_abs: The tolerance of the error of the approximation.
%
% Return Value
% ============
%    du: The closest approximation of the derivative of the function u at x.

D1st = @(u, x, h) (u(x + h) - u(x))/h;
Dc = @(u, x, h) (u(x + h) - u(x - h))/(2*h);
D2c = @(u, x, h) (u(x + h) - 2*u(x) + u(x - h))/(h^2);
Db = @(u, x, h) (3*u(x) - 4*u(x - h) + u(x - 2*h))/(2*h);

x1 = 5;
richardson22(@Dc,@sin,x1,0.1, 5, 1e-8)

function [du] = richardson22(D, u, x, h, N_max, eps_abs)
    % Argument Checking

    if ~isa(D, 'function_handle')
        throw(MException('MATLAB:invalid_argument', 'the argument D is not a function handle'));
    end

    if ~isa(u, 'function_handle')
        throw(MException('MATLAB:invalid_argument', 'the argument u is not a function handle'));
    end

    if ~isscalar(x) 
        throw(MException('MATLAB:invalid_argument', 'the argument x is not a scalar'));
    end

    if ~isscalar(h) || (h <= 0) 
        throw(MException('MATLAB:invalid_argument', 'the argument h is not a positive scalar'));
    end

    if ~isscalar(N_max) 
        throw(MException('MATLAB:invalid_argument', 'the argument N_max is not a scalar'));
    end

    if ~isscalar(eps_abs) 
        throw(MException('MATLAB:invalid_argument', 'the argument eps_abs is not a scalar'));
    end

    du = 0;
    N = zeros(N_max + 1);
    for i = 0:N_max
        Ri1 = D(u, x, h/(2^i));
        N(i+1, 1) = Ri1;
        
        if i > 0
            for j  = 1:i
                Rij = (N(i + 1, j)*4^j - N(i, j))/(4^j - 1);
                N(i + 1, j + 1) = Rij;
            end

            if abs(N(i + 1, i + 1) - N(i, i)) < eps_abs
                du = N(i+1, i+1);
                break
            end
        end
    end

    if du == 0
        throw(MException('MATLAB:invalid_argument', 'the Richardson Extrapolation did not converge'));
    end
end
