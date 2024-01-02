%Star Chen 21010264

A =  [6 15 55;15 55 225;55 225 979];

b = [4 ; 5 ; 7];

A = [6 15 55;25 55 225;55 225 979];

A = [6 15 55;15 55 225];

my_chol(A)
chol(A)

disp(A\b)

U = my_chol(A);
UTransp = my_chol(A)';
d = UTransp\b;

disp(U \ d)