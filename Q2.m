% Star Chen 21010264
% Question 2

x = linspace(0, 2*pi, 50);
a = @(x) sin(x);
b = @(x) cos(x);
c = @(x) 2*sin(x).*cos(x);
d = @(x) sin(x)./cos(x);

tiledlayout(2, 1);
colororder({'k'})

nexttile
plot(x, a(x), "k-", x, b(x), "k-+")
xlim([0, 2*pi])
ylim([-1, 1])
xlabel("x (between 0 and 2π)")
legend("sin(x)", "cos(x)")

nexttile
hold on
plot(x, c(x), "k-.")
xlim([0, 2*pi])
ylim([-1, 1])
yyaxis right
plot(x, d(x), "k-")
ylim([-20, 20])
xlabel("x (between 0 and 2π)")
legend("2sin(x)cos(x)", "sin(x)/cos(x)")
hold off