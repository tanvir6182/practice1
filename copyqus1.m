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

rng=20*cosd(theta)*Tf;
fprintf('value of range %d\n',rng)

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
        plot(x1,y1);
        hold on  
end
xlabel('x(t)');
ylabel('y(t)');
%shows legend for plot(x,y) for each value of theta
        for k=1:length(Tf_v)                               
             leg{k}=sprintf('theta%d',k);
        end
        legend(leg);
%plot (theta,R)
for j=1:length(V_theta)                     %
    Tf_range=0:10^-3:Tf_v(1,j);
    %x1=(v*cosd(V_theta(1,j))).*Tf_v;
    R=v*cosd(V_theta(1,j)).*Tf_v(1,j);
    rangefortheta(1,j)=R;
    figure(4)
    plot(V_theta(1,j),R,'--*','Linewidth',2);
    grid on;
    hold on
end
xlabel('theta');
ylabel('Range,R');

%finding the maximum Range with corresponding theta value

    for k=1:length(V_theta)
        if max(rangefortheta)==v*cosd(V_theta(1,k))*Tf_v(1,k)
            fprintf('maximum range is %dm\n',max(rangefortheta))
            fprintf('corresponding theta value is %d degree\n',V_theta(1,k))
            break
        else
            continue
        end
    end
