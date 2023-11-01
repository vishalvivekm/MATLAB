
numbers = [5, 9,2,11,7,3,8,15,4,1];
    sortedNumbers = [];

for i = 1:10
    maxnum = max(numbers);
    sortedNumbers = [maxnum, sortedNumbers]
    numbers(numbers == maxnum) = [];
end
disp(sortedNumbers);
