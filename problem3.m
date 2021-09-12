clc
clear all;
close all;



x=-1:10^-3:2;                %x vector created

%using vectorization method

a=(1-(3*x/5)+(3*x.^2/20)-(1*x.^3/60));
b=(1+(2*x/5)+(1*x.^2/20));
y=a./b;


%------------------------using loop----------------------------------------

for i=0:size(x)
    
    a1=(1-(3*x/5)+(3*x.^2/20)-(1*x.^3/60));

    b1=(1+(2*x/5)+(1*x.^2/20));

    y1=a1./b1;
end

figure(1)
plot(x,exp(-x),':','Linewidth',4);
hold on

plot(x,y,'--','Linewidth',3 );
legend('exp(-x)','y(x)');
xlabel('value of x');
ylabel({'e^-x';'y(x)'});


e=(y-exp(-x));
error=abs(e);
disp('Error=')
disp(error);

figure(2)
subplot(3,1,1),plot(x,exp(-x),'Linewidth',2);
xlabel('x');
ylabel('exp^-x');
subplot(3,1,2),plot(x,y,'Linewidth',2);
xlabel('x');
ylabel('y(x)');
subplot(3,1,3),plot(x,error,'Linewidth',2);
xlabel('x');
ylabel('error');

