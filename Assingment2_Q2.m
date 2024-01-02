%Star Chen 21010264

rcSum(3)

function out = rcSum(n)

matrix = zeros(n, n)

for i = 1 : n
    for k = 1 : n
        if k == i
            matrix(i, k) = 0;
        else
            matrix(i, k) = i + k;
        end
    end
end
matrix
end