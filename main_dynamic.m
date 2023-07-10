 clear all; close all; clc; 
%-------------------------- Load Parameters ------------------------------
p=60;
omega=p*2*pi/60; %rad/sec
R=0.0125;        %m
Cr=2070;         %force needed to cut material
Jtot=(480 + 215)*10^-6; % Nut + Screw inertia
Mass=0.57;       %kg
g=9.8;           %m/s^2
%-------------------------------------------------------------------------
i=1;
for x = 0: 0.01: 360
    res3 = MC_03(x);
    t(i)= x;
    time(i)=deg2rad(x)/omega;
    p(i)= res3.pos;
    p3(i)= res3.pos/R;
    v3(i)= res3.vel/R*omega;
    a3(i)= res3.acc/R*omega^2;
%------------------------ torque calculation required by motor -----------    
    if(v3(i)>0)
        if (x>=0 && x<190)
            Crs(i)=Jtot*a3(i) ;
        elseif (x>=190 && x<225)
            Crs(i)= Cr+Jtot*a3(i) ;
        else
            Crs(i)=Jtot*a3(i) ; 
        end    
    elseif(v3(i)<0)
        Crs(i)=-Jtot*a3(i) ;
    end
%-------------------------------------------------------------------------
    i = i+1;
end
figure;
subplot(4,1,1);plot(t,p3,'r','LineWidth',2);grid; title('Position');
subplot(4,1,2);plot(t,v3,'b','LineWidth',2);grid; title('Speed');
subplot(4,1,3);plot(t,a3,'k','LineWidth',2);grid; title('Acceleration');
subplot(4,1,4);plot(t,Crs,'r','LineWidth',2);grid; title('torque');
%subplot(5,1,5);plot(t,p,'b','LineWidth',2);grid; title('Position1');

figure;
plot(v3*60/(2*pi),Crs,'r','LineWidth',2);grid; 