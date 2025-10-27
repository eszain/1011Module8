x = [20 30 40 50 ; 21 31 41 51 ; 25 33 49 56];

runningSum = 0;
[r,c] = size(x);
for idx1 = 1:r
    for idx2 = 1:c
        curr = x(idx1,idx2);
        runningSum = runningSum + curr;
    end
end
avgValue = runningSum/(r*c)












% a = 0
% [r,c] = size(x);
% for i = 1:r
%     for j = 1:c
%         add = sum(x(i,j));
%         a = a + 1
%         avg = add/a
%     end
% end

