clc
c=input('Enter a value');
n =c ;
f = n;

while n > 1
    n = n-1;
    f = f*n;
end
X = ['The factorial of ', num2str(c), ' is ', num2str(f)];
disp(X);
