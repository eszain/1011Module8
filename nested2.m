x = [23 46 17 22 ; 45 22 23 11 ; 101 22 34 56];

runningSum = 0;
[r,c] = size(x);
for idx1 = 1:r
    for idx2 = 1:c
        curr = x(idx1,idx2);
        runningSum = runningSum + curr;
    end
end
avgValue = runningSum/(r*c)