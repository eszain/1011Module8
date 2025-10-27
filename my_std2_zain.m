x = [6 7 9 10 11 12 13];
runningSum = 0;
avgValue = mean(x);
n = length(x);
for idx = 1:n
    curr = x(idx);
    runningSum = runningSum +(curr - avgValue)^2;
end
variance = runningSum/(n-1);
