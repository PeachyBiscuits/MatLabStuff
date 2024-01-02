%Star Chen 21010264

t = [10.0 20.0 30.0 40.0 50.0 60.0];
x = [3.52 2.48 1.75 1.2 0.87 0.61];

a = Deriv(t, x)';

logc = log(x);
logdcdt = log(-a);

plot(logdcdt, logc)