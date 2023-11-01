clc;
clear;
close all;


p = [1 0 -2 5];

x = linspace(-3, 2, 100);
y = polyval(p, x);

X = [-1 0 2 3];
Y = polyval(p, X);

q = cell(4, 1);
z = cell(4,1);
for n = 0:3
  q{n+1} = polyfit(X, Y, n);
  z{n+1} = polyval(q{n+1}, x);
end

figure;

subplot(1,2,1);
plot(x,y);
grid on;

subplot(1,2,2);
for n = 0:3
  plot(x, z{n+1}, 'DisplayName', ['n = ' num2str(n)]);
  hold on;
end
grid on;
legend show;
