%Star Chen 21010264


function u = myChol(A)
i = length( A );
j = zeros( i, i );
[a, b] = size(A);

if a ~= b 
    error("Matrix is not square")
elseif issymmetric(A) ~= true
    error("Matrix is not symmetric")
end


for x=1:i
   j(x, x) = sqrt(A(x, x) - j(x, :)*j(x, :)');
   for y=(x + 1):i
      j(y, x) = (A(y, x) - j(x,:)*j(y ,:)')/j(x, x);
   end
u = j';
end
end
