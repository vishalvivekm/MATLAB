% generates 5 different magic square
for i = 3:8
    disp(['Magic Square: ', num2str(i-2)]);
    magic(i)
end
