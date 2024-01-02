%21010264 Star Chen

p = pi;
R = 3;

fV = @(H) p * H.^2*(3*R - H)/3 - 30;

a = 0;
b = 3;
step_size = Inf;

i = 0;
a0 = 0;
function out = ()
while (i < 3)
    a0 = a;
    c = (fV(a)*b - fV(b)*a)/(fV(a) - fV(b));

    if ( fV(c) == 0 )

       break;

    elseif ( fV(a)*fV(c) < 0 )

       step_size = b - c;

       b = c;

    else
       step_size = c - a;

       a = c;

    end
 
err = abs(a0 - a)/a * 100;

disp(err);

i = i + 1;

end

disp(a)

fzero(fV, 3)