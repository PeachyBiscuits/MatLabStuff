%21010264 Star Chen

x=[10 20 30 40 50 60 70 80];
y=[25 70 380 550 610 1220 830 1450];
[a, r2, syx] = linregr2(x,y)

f = @(x) a(1)*x + a(2);

subplot(2,1,1)
hold on 
plot (x,f(x))
scatter(x,y)
title('linear fit and data points vs x')

subplot(2,1,2)
scatter(x,(y - a(2) - a(1).*x))
title('residuals vs x')

function [a, r2, syx] = linregr2(x,y)

n = length(x);

sum1 = 0;
for i = 1 : n
    sum1 = sum1 + x(i)*y(i);
end
sum1 = sum1*n;

sum2 = sum(x) * sum(y);

sum3 = 0;
for i = 1 : n
    sum3 = sum3 + x(i)^2;
end
sum3 = n*sum3;

sum4 = sum(x)^2;

sum5 = sum(y)/n;

sum6 = sum(x)/n;

a1 = (sum1 - sum2)/(sum3-sum4);
a0 = sum5 -a1*sum6;

sum7 = 0;
for i = 1:n
    sum7 = sum7 + y(i)^2;
end
sum7 = n*sum7;

r = (sum1-sum2)/(sqrt(sum3)-sum(x)^2)*sqrt(sum7-sum(y)^2);
r2 = r^2;

sr = 0;
for i = 1:n
    sr = sr + (y(i)- a0 - a1*x(i))^2;
end

syx = sqrt(sr/(n-2));
a = [a1 a0];
end