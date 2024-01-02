%Star Chen 21010264

comparisonTable = table(x', y', r', theta')

x = [1 1 0 -1 -1 -1 0 1 0];
y = [0 1 1 1 0 -1 -1 -1 0];

[r, theta] = cartToPolar(x, y);

function [r, theta] = cartToPolar(x, y)

r = sqrt(x.^2+y.^2);

theta = zeros(1, length(x));

for i = 1 : length(x)
    if y(1, i) > 0
        a = 1;
    elseif y(1, i) == 0
        a = 0;
    elseif y(1, i) < 0
        a = -1;
    end
    
    if x(i) > 0
        theta(1, i) = atan(y(i) / x(i)) * (180 / pi);

    elseif x(i) == 0
        switch a
            case 1
                theta(1, i) = (atan(y(i) / x(i) + pi) * (180 / pi));
            case 0
                theta(1, i) = 180;
            case -1
                theta(1, i) = (atan(y(i) / x(i) - pi) * (180 / pi));
        end

    elseif x(i) < 0
        switch a
            case 1
                theta(1, i) = 90;
            case 0
                theta(1, i) = 0;
            case -1
                theta(1, i) = -90;
        end
    end

end

end