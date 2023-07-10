# AUTOMATED_MECHANICAL_SYSTEM_DESIGN

 ###  Introduction

   
The objective of this project is to research and create a "Cut-off machine". In this project we are going to utilize three different functional groups by labeling them by groups (Motion curve-01) or MC01, (Motion curve-02) or MC02 and (Motion curve 03) or MC03 Which are the feeding group, pressing group and cutting group, respectively. 
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

### Ball Screw Mechanism  

Ball screws are mechanical linear actuators that consist of a screw shaft and a nut that contain a ball that rolls between their matching helical grooves. The primary function of ball screws is to convert rotational motion to linear motion. Ball nuts are used in transmitting forces to a stationary or dynamic load with high accuracy, precision, and repeatability. The main components of ball screws are the screw shaft, the nut, and the ball bearings (or balls). We will discuss their important specifications and their impact on the operation. Ewellix is a global innovator and manufacturer of linear motion and actuation solutions used in assembly automation, medical applications and mobile machinery.
##### Features 
Nominal diameter from 25 to 50 mm								
Lead from 20 to 50 mm 								
Lubrication hole for grease nipple or for automatic lubrication kit 				
Standard protection at each end of the nut with composite wipers integrated into recirculation caps (NOWPR) 								
Optional double protection at each end of the nut with additional brush wipers fitted into recirculation caps (WPR) 								
Optional surface coating on shaft and nut 							

we use the Inventor Multibody software to design the cutting group actuated by Ball-Screw mechanism. Initially we design the parts in a 2D sketch, with respect to the value that used before in our ball-screw Matlab code, then the parts extruded and change to 3D models.

### Dynamic analysis

   In order to develop the dynamic model, first we need to solve the power balance equation of the system. 
The power balance equation is: C.ω + F.V=0 

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/1e8bc0ed-9a0e-4f0d-878d-0f07c4edc575)

As it can be seen, the last diagram which is belong to the torque have affected by high value of external force. The large amount of force needed during the wire cutting part of the movement.

### Motor reducer sizing

In this section of report, we write another power balance equation which depend on the whole system and add the motor and reducer that we have to size. The equation which we have to size is, 𝐶𝑚. 𝜔𝑚 + 𝐽𝑚. 𝜔 ′ 𝑚. 𝜔𝑚 = 𝐶𝑟 . 𝜔𝑟 + 𝐽𝑡𝑜𝑡. 𝜔 ′ 𝑟 . 𝜔𝑟 

##### MELSERVO-J4 

Mitsubishi rotary servo motors are available in capacities from 10 W to 220 kW. Linear servo motors and direct drive motors satisfy new needs in driving control by providing high rigidity, performance and flexibility in system configurations unique to a direct drive.

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/9dca3c5f-13f9-48b3-b4cd-330b43e4bb68)

   After defining the motors, it is time to check which one are qualified to be used, it means that the α parameter of which one goes over the β line; but before that it is needed to know that in the process of retrieval data from catalogue, the rotor inertia depends on size of the motor and it is needed to check if it is too small or not; if so, it should be neglected but in our case they were unneglectable or sometimes it is needed to add some axillary values such as brake which might have a affect.

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/e578ee11-8cb7-4a92-9ccb-968e94a06ebd)

Among all the motors, motor number 7, 8 and 9 could not reach β line so it is not valid to be considered. Therefore, another motors number which their α values are over the beta line, are the ones which can be used.
After all α and β were defined, it is time to calculate ∆𝜏, in order to do this, it is needed to use the maximum velocity achievable by our motion because we need to define the limited transition ratio.

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/0a946dad-6b01-46ac-9132-c0354acb5aea)

So we can use the motors that have reducer between the maximum 𝜏 and minimum 𝜏. To be more precise the reducers are valid which are between 𝜏𝑚𝑎𝑥 and 𝜏𝑝 which is the parameter that limited the acceptable range.

Due to a kinematic constrain there is a limit transmission ratio under which the motor is not capable of reaching the required velocity to the load: 										
If τp > τmax we have to choose a motor with a greater α 							
If τmin < τp < τmax we have to choose a reducer with transmission ratio between τp < τ < τmax 							
If τp < τmin the transmission ratio choosing can be done in the all range τmin < τ < τmax 	

In this case motor number 3 and reducer number 3 from top are chosen.				
Rotary servo motor model: HG-JR 15K1M4(B)
Rated torque: 95.5 [N•m]
Maximum torque: 286 [N•m]
Rated speed: 1500 [r/min]
Maximum speed: 3000 [r/min]
Moment of inertia J: 315 [× 10-4 kg•m2]
Reducer model: SSHdR175-15/1-H-56C-1.0
Ratio: 15:1

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/fffa95f2-0430-4bcd-ab0b-441b2a435542)

As it can be seen in figure, The last diagram is belonged to the torque which need to produce by motor.

### Performance analysis 

The productivity range is from 30 to 90 products per minute. We consider it products 60 per minute.  
Now it is time to check that root mean square of 𝐶𝑚 is lower than the nominal torque. But it should be noted that the first and the last value of nominal torque can be considered from the catalogue, when we used the first, it means we use a motor more powerful than we want and wise versa. And also, we need to check that 𝐶𝑚 is lower than maximum torque of the motor.	

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/cca94f0e-a1e0-47cc-8d24-a0a3de83c680)

From the figure it can be obtained that, the root mean square of the torque (blue line) is lower than the nominal torque of the motor (greenlined), while the torque (black line) is also lower than the maximum torque (redline). Therefore, the motor number 2 and reducer number 1 are valid and our motor is sized.
By using this motor and the reducer we can reach almost 90 pieces without any problem at the check points, but we almost reach the threshold. 

### Crank slider mechanism

The slider-crank mechanism is a four bar chain with a slider replacing an infinitely long output link. In this case a rotoidal joint is degenerated and its axis is placed to infinite. If the pin, whose axis is degenerated, is connected with the ground the slider-crank mechanism is called ordinary.
Mechanical actuators are suitable to both rotating and linear movements. Moreover they are cable of generating complex movements. The crank which is the rotating disc, the slider or piston which slides and creates a linear movement basically inside the tube and the connecting rod which joins the parts together. The length of the Rod that connect the crank to the slider must be greater than Crank radius.

<img width="468" alt="image" src="https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/9a3a4f62-138c-4238-b973-59c56dfee92e">

In this project by considering the motor and reducer type and also the desire length of the wire to be cut, we design the crank and the Rob as in Matlab code, 1.5 cm and 3 cm respectively in Simscape. In the Simscape Multibody workspace we identify the bodies, joints and constraints to incorporate in our model. We consider the force and torque acting between bodies and directly at joints. In order to model the bodies we specify the solid properties of the bodies and add frames to them. In this case we can connect joints and constraints, apply force and torque and finally sense the motion.

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/dc57c29f-2eb6-49d3-a4e7-f28efec4933b)

##### Go and return movement of the crank

According to the dimensions selected for go and return movement of the crank and the equations mentioned above, the value of α will be:

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/12712ef9-88ba-4cb7-a6f8-017893c06c47)

The value of α increase from 0 to 75 degree, remain in this value for certain time, then decrease to 0 degree again. 

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/e6cb627b-89d6-468e-bd8e-c13c76ba53fb)

According to the value of α the total displacement of slider will be 15mm that required by cutting machine. As it can be seen, the last diagram which is belong to the load torque that required from a motor to establish the final movement.

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/4942a24b-4feb-4ec4-ac79-0303ec0895bf)

motors which their α values are over the beta line, are the ones which can be used. So
all the motors are valid to be considered. 

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/5321c7bd-e068-4b56-87db-31c0ff9328b8)

So we can use the motors that have reducer between the maximum 𝜏 and minimum 𝜏. To be more precise the reducers are valid which are between 𝜏𝑚𝑎𝑥 and 𝜏𝑝 which is the parameter that limited the acceptable range.
in this case motor number 7 and reducer number 2 from top are chosen to prevent oversizing.

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/bc6541ea-8559-4cb7-ae54-6f4458358257)

As it can be seen in figure, the last diagram is belonged to the torque which need to produce by motor.

We consider it products 90 per minute.  

![image](https://github.com/AbrahamR7/AUTOMATED_MECHANICAL_SYSTEM-_DESIGN/assets/119547831/99756b61-73b4-43d6-917b-acbaacc321a3)

From the figure it can be obtained that, the root mean square of the torque (blue line) is lower than the nominal torque of the motor (green line), while the torque (black line) is also lower than the maximum torque (redline). Therefore, the motor number 2 and reducer number 1 are valid and our motor is sized.

##### Continuous movement of the crank

According to the dimensions selected for continuous movement of the crank, the value of α will be: 
