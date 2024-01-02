%Star Chen 21010264

Choice = input('Enter octane number or fuel type: ', 's');
switch Choice
    case {'87', 'Regular'}
        disp('100.1')
    case {'89', 'Medium'} 
        disp('107.5')
    case {'91', 'Premium'} 
        disp('112.3')
    case {'94', 'High Octane'} 
        disp('115.3')
    case {'Diesel'} 
        disp('106.9')
    otherwise
        disp('Enter a vaild octane number or fuel type.')
end