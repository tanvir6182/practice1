clc
clear all;
close all;
%-------------------------------(i)---------------------------------------
disp('Answere to the problem No 2.i:');
A= randi([1 10],10);
B= randi([1 10],10);
C= randi([1 10],10);
M=A*B*C;
MT=M';
AT=A';
BT=B';
CT=C';
indMT=CT*BT*AT;
if MT==indMT
    fprintf('(ABC)T=CT*BT*AT\n\n');
else
    fprintf('something wrong');
end
%-------------------------------(ii)---------------------------------------
disp('Answere to the problem No 2.ii:');
 
mABC=A*B*C;
mBCA=B*C*A;
mCAB=C*A*B;
Tr1=0;   %Tr1=Trace of matrix ABC
Tr2=0;   %Tr1=Trace of matrix BCA
Tr3=0;   %Tr1=Trace of matrix CAB
[r1,c1]=size(mABC);
for i1=1:r1
    for j1=1:c1
        if i1==j1
            Tr1=Tr1+mABC(i1,j1);  
        end
    end
end
[r2,c2]=size(mBCA);
 
for i2=1:r2
    for j2=1:c2
        if i2==j2
            Tr2=Tr2+mBCA(i2,j2);
        end
    end
end
 
 
[r3,c3]=size(mCAB);
 
for i3=1:r3
    for j3=1:c3
        if i3==j3
            Tr3=Tr3+mCAB(i3,j3);
        end
    end
end
 
if Tr1==Tr2 && Tr1==Tr3
    fprintf('Tr(ABC)=Tr(BCA)=Tr(CAB)\n\n')
else
   fprintf('Not equal\n');
end
%--------------------------------(iii)-------------------------------------
 
disp('Answere to the problem No 2.iii:');
 
sumABC=A+B+C;
eABC=exp(sumABC);
eA=exp(A);
eB=exp(B);
eC=exp(C);
 
indeABC=eA*eB*eC;
[r,c]=size(eABC);
% for i=1:r
%     for j=1:c
%         if isequal(char(eABC(i,j)),char(indeABC(i,j)))
%            a(i,j)=1; 
%         else
%             a(i,j)=0;
%     end
%     end
% end
% if char(eABC(:,:))==char(indeABC(:,:))
%     fprintf('exp(ABC)=exp(A).exp(B).exp(C)\n\n');
% else
%     fprintf('Not equal');
% end 
%--------------------------------(iv)-------------------------------------
 
disp('Answere to the problem No 2.iv:');
 
Ai=inv(A);
Bi=inv(B);
Ci=inv(C);
fprintf('\nInverse of A=\n');
disp(Ai);
fprintf('\nInverse of B=\n');
disp(Bi);
fprintf('\nInverse of C\n');
disp(Ci);
