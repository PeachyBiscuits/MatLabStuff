% Star Chen 21010264

% 1.1
xrange = [5 50];
x = [5 10 15 20 25 30 35 40 45 50];
y = [17 24 31 33 37 37 40 40 42 41];
l = length(x);

hold on
scatter(x,y)

% a)
m = (l*sum(x.*y)-sum(x)*sum(y))/(l*sum(x.^2)-(sum(x))^2);
n = (sum(y) - m*sum(x))/l;

fxLinear = @(x)m*x + n;

fplot(fxLinear, xrange)

% b)
% ln(y) = ln(a) + b*ln(x)

lny = log(y);
lnx = log(x);

b = (l*sum(lnx.*lny)-sum(lnx)*sum(lny))/(l*sum(lnx.^2)-(sum(lnx))^2);
lna = (sum(lny) - b*sum(lnx))/l;

fxPower = @(x) exp(lna).*x.^b;
fplot(fxPower, xrange)

% c)

fSatruation = polyfit((1./x),(1./y),1);
a1Saturation = fSatruation(1);
a0Saturation = fSatruation(2);
alphaSat = 1/a0Saturation;
betaSat = a1Saturation*alphaSat;
fxSat = @(x) alphaSat*(x./(betaSat + x));
fplot(fxSat, xrange)

% d)

P = polyfit(x, y, 2);
fParabola = @(x) P(1).*x.^2 + P(2).*x + P(3);
fplot(fParabola, xrange)

legend("Data Points","Line","Power Equation","Saturation-Growth-Rate Equation", "Parabola")

disp("The line and power equation graphs fit the data points the worst, the parabola and the saturation growth graphs both follow about as well as the other.")