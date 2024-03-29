clc

A = [1 2 3;4 5 6;7 8 8];
b = [4;5;7];
%A = [1 2 3; 4 5 6];
%A = [1 2;3 4];
%A = [1 2 3;4 5 6;7 8 9];

naiveGauss(A, b)

function out = naiveGauss(A, b);
%test for inital error conditions
matrixDimension = size(A);
sizeb = size(b);
if matrixDimension(1) ~= matrixDimension(2)
    error("Matrix[A] is not a square matrix")
elseif matrixDimension(2) ~= sizeb
    error("Matrix dimension does not match")
elseif abs(det(A)) < 1E-11
    error("Matrix[A] is singular")
end

n = size(A,1);  %getting n
A = [A,b];      %produces the augmented matrix

%elimination process starts
for i = 1:n-1
    p = i;
    %comparison to select the pivot
    for j = i+1:n
        if abs(A(j,i)) > abs(A(i,i))
            U = A(i,:);
            A(i,:) = A(j,:);
            A(j,:) = U;        
        end
    end
    %cheking for nullity of the pivots
    while A(p,i)== 0 && p <= n
        p = p+1;
    end
    if p == n+1
        disp('No unique solution');
        break
    else
        if p ~= i
            T = A(i,:);
            A(i,:) = A(p,:);
            A(p,:) = T;
        end
    end
    
    for j = i+1:n
        m = A(j,i)/A(i,i);
        for k = i+1:n+1 
            A(j,k) = A(j,k) - m*A(i,k);
        end
    end
end

%checking for nonzero of last entry
if A(n,n) == 0
    disp('No unique solution');
    return
end
%backward substitution
x(n) = A(n,n+1)/A(n,n);
for i = n - 1:-1:1
    sumax = 0;
    for j = i+1:n
        sumax = sumax + A(i,j)*x(j);
    end
    x(i) = (A(i,n+1) - sumax)/A(i,i);
end

out = x;

end
