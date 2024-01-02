% Star Chen 21010264


x = [1.6, 2, 2.5, 3.2, 4, 4.5];
y = [2, 8, 14, 15, 8, 2];

%newton
% Degree one
n1 = @(x) y(3) + (y(4)-y(3))/(x(4)-x(3))*(x-x(3));
disp("Guess of f(2.8) for degree 1 newton interpolation is " + n1(2.8))

% Degree two
a = y(2);
b = (y(3) - a) / (x(3) - x(2));
c = ((y(4) - y(3)) / (x(4)-x(3)) - b) / (x(4)-x(2));
n2 = @(x) a + b*(x-x(2)) + c*(x-x(2))*(x-x(3));
disp("Guess of f(2.8) for degree 2 newton interpolation is " + n2(2.8))

% Degree three
c = (((y(5) - y(4)) / (x(5)-x(4)) - b) / (x(5)-x(3)) - c)/(x(5)-x(2));
n3 = @(x) a + b*(x-x(2)) + c*(x-x(2))*(x-x(3)) + c*(x-x(2))*(x-x(3))*(x-x(4));
disp("Guess of f(2.8) for degree 3 newton interpolation is " + n3(2.8))

%lagrange
xLag = [2.5,3.2,4,4.5];

% Degree one
la1 = @(x) (x-xLag(2)) / (xLag(1)-xLag(2));
la2 = @(x) (x-xLag(1)) / (xLag(2)-xLag(1));
lagrange = @(x) y(3)*la1(x) + la2(x)*y(4);

disp("Guess of f(2.8) for degree 1 lagrange interpolation is " + lagrange(2.8))

%deg. 2
La = @(x) ((x-xLag(2))*(x-xLag(3)))/((xLag(1)-xLag(2))*(xLag(1)-xLag(3)));
La2 = @(x) ((x-xLag(1))*(x-xLag(3)))/((xLag(2)-xLag(1))*(xLag(2)-xLag(3)));
La3 = @(x) ((x-xLag(1))*(x-xLag(2)))/((xLag(3)-xLag(1))*(xLag(3)-xLag(2)));
lagrange = @(x) y(3)*La(x) + La2(x)*y(4) + La3(x)*y(5);

disp("Guess of f(2.8) for degree 2 lagrange interpolation is " + lagrange(2.8))

%deg. 3
Lag = @(x) ((x-xLag(2))*(x-xLag(3))*(x-xLag(4)))/((xLag(1)-xLag(2))*(xLag(1)-xLag(3))*(xLag(1)-xLag(4)));
Lag2 = @(x) ((x-xLag(1))*(x-xLag(3))*(x-xLag(4)))/((xLag(2)-xLag(1))*(xLag(2)-xLag(3))*(xLag(2)-xLag(4)));
Lag3 = @(x) ((x-xLag(1))*(x-xLag(2))*(x-xLag(4)))/((xLag(3)-xLag(1))*(xLag(3)-xLag(2))*(xLag(3)-xLag(4)));
Lag4 = @(x) ((x-xLag(1))*(x-xLag(2))*(x-xLag(3)))/((xLag(4)-xLag(1))*(xLag(4)-xLag(2))*(xLag(4)-xLag(3)));
lagrange3 = @(x) y(3)*Lag(x) + Lag2(x)*y(4) + Lag3(x)*y(5) + Lag4(x)*y(6);
disp("Guess of f(2.8) for degree 3 lagrange interpolation is " + lagrange3(2.8))

%The newton and lagrange interpolations are almost the same with minor
%error difference.