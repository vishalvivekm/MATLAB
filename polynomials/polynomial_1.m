clc;
clear;
close all;


p = [1 0 -2 5];

x = linspace(-3, 2, 100);
y = polyval(p, x);

X = [-1 0 2 3];
Y = polyval(p, X);

q = cell(4, 1);
for n = 0:3
  q{n+1} = polyfit(X, Y, n);
end

figure;
plot(x,y);
grid on;
