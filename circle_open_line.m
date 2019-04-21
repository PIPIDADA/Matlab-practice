clear all;close all;clc;
%% º¥¶}½u


r = 2;
k = 2 * pi;
i = 1;

for theta = 0 : 0.01 : k
    p = [- r * cos(theta); -r * sin(theta)]';
    o = p / norm(p);
    x(i) = (r * sin(theta)) + r * theta * o(1);
    y(i) = (- r * cos(theta)) + r * theta * o(2);
    
    xc(i) = r * sin(theta);
    yc(i) = - r * cos(theta);
    
    i = i + 1;
    
end
plot(x,y);hold on;
plot(xc,yc);
grid on;
xlim([-15 10]);
ylim([-5 10]);