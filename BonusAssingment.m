%Star Chen
%21010264

function checkSymmetric = f(x)
    x = input("Input a matrix")
    if x == x'
        disp("The matrix is symmetric")
    else 
        disp("The matrix is not symmetric")

    end
    