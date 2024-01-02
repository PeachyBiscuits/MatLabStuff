
Assingment2NE113()

function [theta, r, table] = Assingment2NE113(x, y)

if x > 0
    angle = arctan(y/x);
elseif x == 0
    if y > 0
        angle = pi/2;
    elseif y == 0
        angle = 0;
    else 
        angle = -pi/2;
    end
else
    if y > 0
        angle = arctan(y/x) + pi;
    elseif y == 0
        angle = pi;
    else
        angle = arctan(y/x) - pi;
    end
end

radius = sqrt(x.^2 + y.^2);

theta = angle;
r = radius;

end
