% find nth term in a fibo sequnce
n = input('Enter n');

a1 = 0;
a2 = 1;

num = [a1 a2];

for i=3:n
    num(i) = num(i-1) + num(i-2);

end
% disp(["The ", num2str(n), "'th term in fibo sequence is: ", num(n)]);
fprintf("The %d'th term in Fibo sequence is: %d ", n, num(n));

