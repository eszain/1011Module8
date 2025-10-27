x1 = [22 46 1267 22; 45 45 23 11 ;45 22 1267 56];
x2 = [45 22 17 11; 26 99 34 56 ;28 123 456 286];

x3(:,:,1) = x1;
x3(:,:,2) = x2;

runningSum = 0;
[r,c,d] = size(x3);
for idx1 = 1:1:r
    for idx2 = 1:1:c
        for idx3 = 1:1:d
        curr = x3(idx1,idx2,idx3);
        runningSum = runningSum + curr;
        end
    end
end
avgValue = runningSum/(r*c*d)