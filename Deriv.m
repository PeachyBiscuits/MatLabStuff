%21010264 Star Chen

function dxdt = DERIV(t, x)

n = length(t);
dx = zeros(length(t), 1);

for i = 1 : n
    if i ~= 1 && i ~= n
        %Central Finite Difference 
        dx(i) = (x(i + 1) - x(i - 1)) / 2 / (t(i + 1) - t(i));
    elseif i == 1
        %Forward Finite Difference
        dx(i) = ((1/(2*(t(i + 1) - t(i)))) * (-x(3) + 4*(x(2)) - 3*(x(1))));
    elseif i == n
        %Backward Finite Difference
        dx(i) = (3*x(i) - 4*x(i - 1) + x(i - 2))/2/(t(i) - t(i - 1));
    end
end 
dxdt = dx; 
end