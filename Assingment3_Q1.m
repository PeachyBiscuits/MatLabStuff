% Star Chen 21010264    

A = [6 0 -1 0 0 ; 0 2 -1 0 0 ; 0 -1 9 0 0 ; -3 -1 0 0 4 ; 0 -1 -8 11 -2 ];
b = [50 0 160 0 0]';

Sol = linsolve(A, b);

concentration1 = Sol(1, 1);
concentration2 = Sol(2, 1);
concentration3 = Sol(3, 1);
concentration4 = Sol(4, 1);
concentration5 = Sol(5, 1);

disp(concentration1)
disp(concentration2)
disp(concentration3)
disp(concentration4)
disp(concentration5)