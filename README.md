# AUTOMATED_MECHANICAL_SYSTEM_DESIGN

 ###  Introduction

   The object of this project is that we are going to study and develop a “Cut-off machine”. In this project we are going to utilize three different functional groups by labeling them by groups (Motion curve-01) or MC01, (Motion curve-02) or MC02 and (Motion curve 03) or MC03 Which are the feeding group, pressing group and cutting group, respectively. 
Each of these function group has a specific total rise. Cutting length can vary between 60 to 160 mm. Total rise of MC02 and Total rise of MC03 are 5mm and 15mm sequentially (H02=5 mm, H03=15 mm). As it has been assigned for us the diameter of the wire to be cut is 6 mm and material is AISI 1040 (C40). Productivity varies from 30 to 90 products per minute. The material considered for this project is C40, which has the following characteristics. In this project, we intend to cut the material with ranges length from 60mm to 160mm and have 30 to 90 products per minute. 

<img width="400" alt="image" src="https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/202f4d11-5466-4101-8f6e-cc43057b9907">

### Motion curve design

In the following, we will go through each step and survey the motion of the parts from the observer view and find the motion curves of actuators and then by using the linear motions reach the rotational specification, at the end by having all the data we can size the motor. 
   With considering the point that Motion curves with a constant acceleration are not satisfactory in terms of the reduction of power coefficient because they have at the same time velocity and acceleration maximums, we use3 different profiles (trapezoidal, Cubic and Modified trapezoidal). 
     We have written the MATLAB command code in such a way that we are able to select the desired profiles in different parts of the problem according to different requirements.

### Trapezoidal velocity motion profile 	

Trapezoidal motion curve reduce the maximum velocity. If h and ta are fixed, the only way to reduce the maximum velocity is to change the shape of the motion curve or, in other words, the value of the velocity coefficient. Practically values of cv very close to 1 cannot be reached because they would require very high values of acceleration. considerable decreasing of the velocity coefficient can be obtained without strong increasing of acceleration coefficient until the value cv =1.2, after a little reduction is paid with high acceleration values. The modified constant velocity curve can be generalized using asymmetric acceleration segments and two parameter ξv and ξw. It is possible, integrating the acceleration diagram, to define the motion curve in terms of velocity and displacement.

<img width="422" alt="image" src="https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/d53e48bf-48fd-4bad-9615-c8e8fb627cbc">

### Modified trapezoidal trajectory

Modified trapezoidal trajectory is a dimensionless diagram of acceleration. Because of the continuity of this acceleration profile, we need to integrate it once and twice in order to reach velocity and displacement respectively. This solution is also called seven segment because it divides the diagram into seven sections. the first, the third, the fifth and the seventh have a sinusoidal trend while the second, the fourth and the sixth are with constant acceleration.

<img width="448" alt="image" src="https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/d3b9dc7e-003f-47ca-ab3d-ca106dfd4126">

The acceleration, velocity and position diagrams of modified trapezoidal trajectory that has been developed on Matlab :

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/3ee13455-a8c8-4631-b3a3-03ac718018a2)

### Displacement diagram

We write a Matlab Script that plots displacement of the movements MC01 (with taking account the different length between 6cm and 16cm as you see in different colors in the Fig.3), MC02 and MC03.
MC01:  6 cm <h< 16 cm; 80° rise, dwell till next cycle. (𝛼1= 80; 𝛼2=360;)
MC02: h=5 mm; 90° rise; 135° dwell; 305° return, dwell till next cycle. (𝛼1=90; 𝛼2=135; 𝛼3= 305; 𝛼4=350; 𝛼5=360)
MC03: h=15mm; 145° rise, dwell till next cycle. (𝛼1=145; 𝛼2=225; 𝛼3= 235; 𝛼4=295; 𝛼5=360)

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/27f229d7-dd82-4e21-a83e-53bd0eb10548)

### Timing diagram

By using the timing diagram, we express the process of translation of the object through the phases consists of rise, dwell, down and again dwell with the assumption that the whole cycle happens not based on time (t) but also based on a variable named master angel (α). The whole cycle starts in 0˚ and ends at 360 degrees.

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/bb35a9be-4da4-4167-8f9e-2940f78b7762)

It is mentioned that the displacement of group MC01 displaces between 60 mm and 160 mm. 
  As you can see in the diagrams the total rise of this group for our project 110mm. In the feeding group by using the trapezoidal velocity motion profile we gain a motion curve that is suitable to decrease the cv value. the system will rise for 80˚ and dwell until the next cycle.
  The total displacement of group MC02 is 5mm. As you can see in the diagrams, after 90˚, the system will Rise for 135˚ and Dwell until 305˚, and then the system Return 350˚ and finally Dwell until the next cycle. In this motion curve we use Cubic profile to limit the Mechanical Power and reduce the value of ck.
For the last group which is Cutting group MC03, total displacement is 15mm. As you can see in the diagram below, after 145˚, the system will Rise for 225˚ and after a short Dwell until 235˚ the system Return 295˚ and finally Dwell until the next cycle. The modified trapezoidal curve of this group consider to remove discontinuity on the acceleration diagram (in other terms eliminating the sharp corners in the acceleration profile).
Finally, by applying h, the total displacement, and the degree of rising to the equations we achieved the geometrical values of acceleration, velocity and position of both groups.
The maximum values of velocity and acceleration of the movement MC01 and MC02 Could be defined as following:

The productivity level in this case is 60 product per minute, so the angular velocity is 6.28 rpm. the maximum values of velocity and acceleration of the movement MC01 are 0.6769 m/s and 9.2167 m⋅s−2   respectively. the maximum values of velocity and acceleration of the movement MC02 are 0.0597 m/s and 1.9167 m⋅s−2   respectively.
