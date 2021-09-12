clc
clear all;
close all;
n=input('Enter half diamond row')
c=2*n-1;
for i=0:n
   % if i>=c/2
        for j=0:c+1
            if j>=n-(i-1) && j<=n+(i-1)
                fprintf('-')
            elseif j==n+i || j==n-i
                fprintf('*')
            else
                fprintf(' ')
            end
        end
        
           fprintf('\n')
end
for i1=2*n-1:-1:n
   for j1=0:c
            if j1>=n-(i1-1)+n && j1<=n+(i1-1)-n
                fprintf('-')
            elseif j1==i1 || j1==(n-i1)+n
                fprintf('*')
            else
                fprintf(' ')
            end
        end
        
           fprintf('\n')
end
