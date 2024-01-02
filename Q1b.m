% Star Chen 21010264
% Question 1.b

f =  @(x, b) log(b + sin(x));

b = [1, 1.2 ,2];
x = linspace(0, 15, 50);

plot(x, f(x, b(:))) 
xlabel("x") 
ylabel("f(x, b)")
legend("b = 1", "b = 1.2", "b = 2")