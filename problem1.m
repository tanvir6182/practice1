clc
clear all;
close all;
%-------------------------------(i)----------------------------------------
v=20;
Tf=2;
theta=30;
t=0:10^-3:Tf;
x=v*cosd(theta)*t;
y=v*sind(theta)*t-5*t.^2;
figure(1)
subplot(2,1,1),plot(t,x);
xlabel('t');
ylabel('x');
grid on;
subplot(2,1,2),plot(t,y);
xlabel('t');
ylabel('y');
grid on;
%%--------------------------------(ii)-------------------------------------
figure(2)
rangeR=v*cosd(theta)*Tf;
plot(x,y,'-o','MarkerIndices',length(x),'color','r','Linewidth',2);
xlabel('x(t)');
ylabel('y(t)');
%------------------------------------(iii)---------------------------------
V_theta=randi([0 90],1,10);
Tf_v=v*sind(V_theta)./5;
%plot (x,y) for each value of theta
for i=1:length(Tf_v)
        Tf_range=0:10^-3:Tf_v(1,i);
        x1=(v*cosd(V_theta(1,i))).*Tf_range;
        y1=v*sind(V_theta(1,i)).*Tf_range-(5.*Tf_range.^2);
        figure(3)
        plot(x1,y1,'LineWidth',3 );
        grid on
        hold on
        leg{i}=sprintf('theta=%d',V_theta(i));
        hold on
end
    legend(leg,'LineWidth',3);

for j=1:length(V_theta)                     %
    Tf_range=0:10^-3:Tf_v(1,j);
    %x1=(v*cosd(V_theta(1,j))).*Tf_v;
    R=v*cosd(V_theta(1,j)).*Tf_v(1,j);
    fprintf('For the Value of theta= %d,the value of R= %.3f\n',V_theta(j),R);
    figure(4)
    plot(V_theta(1,j),R,'o','Linewidth',3);
    grid on;
    hold on
    lege{j}=sprintf("theta(%d) R(%.3f)",V_theta(j),R);
    hold on
end
legend(lege,'LineWidth',3);    
