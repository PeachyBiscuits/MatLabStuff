%21010264 Star Chen

clc;
clf;
x=[1 4 4 1];
y=[1 1 4 4];
angle = 45;
[xt, yt]=Rotate2D(angle,x,y);

x(end + 1) = x(1);
y(end + 1) = y(1);
xt(end + 1) = xt(1);
yt(end + 1) = yt(1);

hold on

plot(x,y)
plot(xt, yt)

legend('Original Shape', 'Rotated Shape')
function [xr, yr]=Rotate2D(angle,x,y)

xr = zeros(length(x),1);
yr = zeros(length(x),1);

A = [cosd(angle) -sind(angle); sind(angle) cosd(angle)];

    for i = 1:length(x)
        rotated_point = A*[x(i) y(i)]';
        xr(i) = rotated_point(1);
        yr(i) = rotated_point(2);
    end
end