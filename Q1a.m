% Star Chen 21010264
% Question 1.a

f =  @(x, b) log(b + sin(x));

b = input('Enter a value for b')
x = linspace(0, 15, 50);

plot(x, f(x, b)) 
xlabel("x") 
ylabel("f(x, b)")
legend("b = "+ b )