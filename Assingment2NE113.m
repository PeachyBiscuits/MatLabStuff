
x = [1 1 0 -1 -1 -1 0 1 0];
y = [0 1 1 1 0 -1 -1 -1 0];

angleOut(x, y);

function [tableOut] = angleOut(x, y)

r = zeros(size(x));

for i = 0:1:size(x)
    if x > 0
        angle = atan(y/x);
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
            angle = atan(y/x) + pi;
        elseif y == 0
            angle = pi;
        else
            angle = atan(y/x) - pi;
        end
    end
    degreeAngle = angle/pi*180;

end

radius = sqrt(x.^2 + y.^2);

degreeAngle
tableOut = table(x, y, radius, r);

end
