%Star Chen 21010264

% 1a) 
f =@(x) 3*x^5+3.4*x^3+8*x^2-8.5*x-2.6;
zeroLine = @(x) 0*x;
hold on
fplot(zeroLine, [-2 2])
fplot(f, [-2 2])
fprintf("There are 3 real roots")
hold off

% 1b)

p = [3, 0, 3.4, 8, -8.5, -2.6]; 
rt = roots(p);
reals = [];
fprintf("There are 3 real roots, they are: ") 

for  i = 1: length(roots(p))
    if rt(i) == conj(rt(i))
        disp(rt(i))
    end
end

% 1d)
disp("it convergees to -0.252627976 after 4 iterations")

