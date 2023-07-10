clear all; close all; clc;
%--------------------------- Cutting lenght -----------------------------
prompt = "Insert the Cutting length?(Cutting length ranges from 0.06m to 0.16m) : ";
input01 = input(prompt);
if (input01>=0.06 && input01<=0.16)
    h = input01;
else
    disp("out of range")
    return
end    
p=90;
omega=p*2*pi/60; %rad/sec
i = 1;
%par.v=1/3;
%par.w=2/3;
for x = 0 : 1 : 360
    res1 = MC_01(x,h);
    res2 = MC_02(x);
    res3 = MC_03(x);
    %res4 = MC_Crank_Slider_GaR_Movement(x,p);
    %res4 = MC_Crank_slider_continuous_movement(x,p);
    t(i)= x;
    time(i)=deg2rad(x)/omega;
    p1(i)= res1.pos;
    v1(i)= res1.vel;
    a1(i)= res1.acc;
    p2(i)= res2.pos;
    v2(i)= res2.vel;
    a2(i)= res2.acc;
    p3(i)= res3.pos;
    v3(i)= res3.vel;
    a3(i)= res3.acc;
    %p4(i)= res4.pos;
    %v4(i)= res4.vel;
    %a4(i)= res4.acc;
    i = i+1;
end
%-------------------------- cycle time ------------------------------------
cycle_time=deg2rad(360)/omega;
disp("cycle time for your productivity level is : ")
disp(cycle_time)
%-------------------------- timing diagram ----------------------------------------
figure;
subplot(3,3,1);plot(time,p1,'r','LineWidth',2);grid;ylabel('Position');title('Feeding group');
subplot(3,3,4);plot(t,v1,'b','LineWidth',2);grid;ylabel('Speed'); 
subplot(3,3,7);plot(t,a1,'k','LineWidth',2);grid;ylabel('Acceleration'); 
subplot(3,3,2);plot(t,p2,'r','LineWidth',2);grid;ylabel('Position'); title('Pressing group');
subplot(3,3,5);plot(t,v2,'b','LineWidth',2);grid; ylabel('Speed');
subplot(3,3,8);plot(t,a2,'k','LineWidth',2);grid; ylabel('Acceleration');
subplot(3,3,3);plot(t,p3,'r','LineWidth',2);grid;ylabel('Position'); title('Cutting group');
subplot(3,3,6);plot(t,v3,'b','LineWidth',2);grid; ylabel('Speed');
subplot(3,3,9);plot(t,a3,'k','LineWidth',2);grid; ylabel('Acceleration');

