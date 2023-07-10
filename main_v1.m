clear all; close all; clc;
p=60;
omega=p*2*pi/60; %rad/sec
i = 1;
for x = 0 : 1 : 360
    res1 = MC_01_v1(x);
    res2 = MC_02(x);
    res3 = MC_03(x);
    t(i)= x;
    p1(i)= res1.pos;
    p12(i)= res1.pos1;
    p13(i)= res1.pos2;
    p14(i)= res1.pos3;
    p15(i)= res1.pos4;
    p16(i)= res1.pos5;
    p2(i)= res2.pos;
    p3(i)= res3.pos;
    i = i+1;
end
%-------------------------- displacement diagram ----------------------------------------
figure;
subplot(3,1,1);plot(t,p1,t,p12,t,p13,t,p14,t,p15,t,p16,'LineWidth',2);grid;ylabel('Position with different length');title('Feeding group');
subplot(3,1,2);plot(t,p2,'b','LineWidth',2);grid; title('MC_02');ylabel('Position'); title('Pressing group');
subplot(3,1,3);plot(t,p3,'k','LineWidth',2);grid; title('MC_03');ylabel('Position'); title('Cutting group');