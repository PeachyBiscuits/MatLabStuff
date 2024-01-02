% Star Chen 21010264

function out = MyFactorial_Script()

querry = input('Do you want to return a number? ("yes"/"y","no"/"n") ', 's'); 
n = input('Enter an integer: ');

MyFactorial = 1;

if n == 0
    out = MyFactorial;
    disp(out)
end
for x = 1:n
    MyFactorial = MyFactorial*x;
end

if  (length(n) ~= 1) || n < 0 || (n ~= int8(n))
    error('Input must be a positive integer')
end 

if querry == "yes" || querry == 'y'
    out = MyFactorial;
    disp(out)
    out = factorial(n);
    disp(out)
elseif querry == "no" || querry == 'n'
    n = 10;
    out = MyFactorial;
    disp(out)
    out = factorial(n);
    disp(out)
else 
    disp('Invalid input entered.')
end

end