x = [20 30 40 50 21 31 41 51 25 33 49 56];

runningSum = 0;
n = length(x);
for i = 1:n
        curr = x(i);
        runningSum = runningSum + curr;
end
avgValue = runningSum/n;

runningSum2 = 0;
for i = 1:n
    curr1 = x(i);
    runningSum2 = runningSum2 + (curr1 - avgValue)^2;
end
std_x = sqrt(runningSum2/(n - 1))


