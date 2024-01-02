function out = matrixTranspose(A)
n = size(A);
b = zeros(n(2), n(1));
for i = 1:n(1)
    for k = 1 : n(2)
        B(k, i) = A(i, k);
    end
end
disp(b)
end