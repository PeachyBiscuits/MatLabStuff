%21010264 Star Chen 

A = [6 15 55;25 55 225;55 225 979];

% a)

ASwapped([1 3 2], :) = A([1 2 3], :);
disp(ASwapped)

% b)

X = randi([-40, 40], 6, 6);
disp(X)

k = input("Enter a value to seach from the row and at the column for the absolute max number.");

X = X(k : end, k);

maxX = max(abs(X));

disp(maxX)
