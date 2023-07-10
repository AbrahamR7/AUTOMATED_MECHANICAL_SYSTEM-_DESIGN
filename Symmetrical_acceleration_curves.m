clc
clear all
close all

%stop[s]
stop=5;
%step[s]
step=0.01;
%counters
c1=step;
c2=1;
%vector dimensions setting
dim=round(stop/step,0);
%velocity
v=zeros(1,dim+1);
%displacement
s=zeros(1,dim+1); 


%symmetric acceleration
%amplitude
amp=2;
a1=amp*ones(1,(dim/2)+1);
a2=(-amp)*ones(1,(dim/2));
a=[a1,a2];

%velocity and displacement calculation
while c1<=stop
    if c2>=2
     v(c2) = v(c2-1)+a(c2)*step;
     s(c2)=s(c2-1)+v(c2)*step+a(c2)*((step^2)/2);
    end
    c1=c1+step;
    c2=c2+1;
end
%The object stays still at same place, in c2 a and v are equal to 0
s(c2)=s(c2-1);


%plotting
%time[s]
t=0:step:stop;
%merged plot
plot(t,a,t,v,t,s)
title('Graphic of acc.,vel.,displ.')
legend({'y = acceleration [m/s^2]','y = velocity [m/s]','y = displacement [m]',},'Location','northwest')
xlabel('Time[s]')
hold on
