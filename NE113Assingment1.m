% Question 1
interest1 = futureworth(100000, 0.04, 11)
interest2 = futureworth(100000, 0.08, 11);

plot(interest1.year, interest1.futureWorth, "r-+")
hold on
plot(interest2.year, interest2.futureWorth, "b-*")
hold off

xlabel("Year")
ylabel("Future Worth")
legend("4% interest", "8% interest")
title("Question 1")


% Question 2
payment1 = annualpayment(55000, 0.066, 5)


% Question 3
x = -2*pi:0.1:2*pi;
f = inline("sin(X/2)", "X");
g = @(y) 2*cos(y);

plot(x, f(x), "b--")
hold on
plot(x, g(x), "r-+")
hold off

xlabel("X")
ylabel("Y")
legend("function 1", "function 2")
title("Question 3")


% Functions
function investment = futureworth(P, interest, nMax)
    year = (0:nMax).';
    futureWorth = [];

    for n = year.'
        F = P*(1 + interest)^n;
        futureWorth = [futureWorth; F];
    end

    investment = table(year, futureWorth);
end

function payment = annualpayment(P, interest, nMax)
    year = (1:nMax).';
    annualPayment = [];

    for n = year.'
        A = P*(interest*(1 + interest)^n)/((1 + interest)^n - 1);
        annualPayment = [annualPayment; A];
    end

    payment = table(year, annualPayment);
end