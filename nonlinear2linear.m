%Star Chen 21010264

%y = ax*exp(Bx)
%ln y = ln a + ln x + Bx

%yp = log(y) - log(x)
%ap = ln a 
%yp = ap + Bx 

x = [0.1 0.2 0.4 0.6 0.9 1.3 1.5 1.7 1.8];
y = [0.75 1.25 1.45 1.25 0.85 0.55 0.35 0.28 0.18];
yp = log(y) - log(x)

%finding values of a and B 
p = polyfit(x,yp,1);
a = exp(p(2))
B = p(1)


subplot(2,1,1)
hold on
plot(x,polyval(p,x))
scatter(x,yp)
title('linearized data') 

subplot(2,1,2)
f = @(x)a.*x.*exp(B.*x);
plot(x,f(x))
title('graph with estimated a and B values') 