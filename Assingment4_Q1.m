syms x

maxErr = 0.015;
n = 1;
xRange = 0 : pi/10 : pi;

while true
    hold on
    subplot(1, 2, 2);
    fplot(maxErr, [0, pi])

    f = 1 - x - sin(x);
    Tay = taylor(f, "Order", n, "ExpansionPoint", pi/2);

    fx = matlabFunction(f);
    T = matlabFunction(Tay);

    fDiff = matlabFunction(abs(Tay - f));

    if abs(fDiff(0)) < maxErr || abs(fDiff(pi)) < maxErr
        n = n + 1;
        break
    else
        n = n + 1;
        disp(n)
    end

disp(T)
subplot(1, 2, 1);
fplot(T, [0, pi])

subplot(1, 2, 2);
fplot(fDiff, [0, pi])


end
hold off
