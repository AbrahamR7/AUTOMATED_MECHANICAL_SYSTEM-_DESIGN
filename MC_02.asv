function ris=MC_02(alpha)
%-------------------------- parameters ------------------------------------
h=0.005; %[m]
a1=90; a2=135; a3=305 ; a4=350; a5=360; 
in=[0 a1 a2 a3 a4 a5];
%xv_1= 0.2;               %<<<<< Con.Acc motion curve parameters
xv_1=0;                   %<<<<< Cycloidal or cubic motion curve parameters
%xv_1.v=0.33; xv_1.w=0.66;%<<<<< Sshape motion curve parameters

%---------------------------- dwell ---------------------------------------
if(alpha>= in(1) && alpha < in(2))   
    da=(in(2)-in(1));
    alpha_ad=(alpha-in(1))/da;
    ris.pos=0;
    ris.vel=0;
    ris.acc=0;
    
%---------------------------- rise ----------------------------------------    
elseif(alpha>=in(2) && alpha<in(3))
    da=(in(3)-in(2));
    alpha_ad=(alpha-in(2))/da;
    % out=McmConstantAcceleration(alpha_ad,xv_1);  %Con.Acc motion curve
      out=McmCubic(alpha_ad,xv_1);                 %Cubic motion curve
    % out=McmCycloidal(alpha_ad,xv_1);             %Cycloidal motion curve
    % out=McmSshape(alpha_ad,xv_1);                %Sshape motion curve
    % out=McmModified_trapezoidal(alpha_ad);       %Modified_trapezoidal motion curve
    ris.pos=h*out.pos;
    ris.vel=h/deg2rad(da)*out.vel;
    ris.acc=h/(deg2rad(da))^2*out.acc;

%---------------------------- dwell ---------------------------------------
elseif(alpha>=in(3) && alpha<in(4))
    da=(in(4)-in(3));
    alpha_ad=(alpha-in(3))/da;
    ris.pos=h;
    ris.vel=0;
    ris.acc=0;

%---------------------------- fall ---------------------------------------    
elseif(alpha>=in(4) && alpha<in(5))
    da=(in(5)-in(4));
    alpha_ad=(alpha-in(4))/da;
    % out=McmConstantAcceleration(alpha_ad,xv_1);  %Con.Acc motion curve ...
      out=McmCubic(alpha_ad,xv_1);                 %cubic motion curve ...
    % out=McmCycloidal(alpha_ad,xv_1);             %Cycloidal motion curve 
    % out=McmSshape(alpha_ad,xv_1);                %Sshape motion curve 
    % out=McmModified_trapezoidal(alpha_ad);       %Modified_trapezoidal motion curve
    ris.pos=h-h*out.pos;
    ris.vel=-h/deg2rad(da)*out.vel;
    ris.acc=-h/(deg2rad(da))^2*out.acc;  
    
%---------------------------- dwell ---------------------------------------    
elseif(alpha>=in(5) && alpha<in(6)) % dwell
    da=(in(6)-in(5));
    alpha_ad=(alpha-in(5))/da;
    ris.pos=0;
    ris.vel=0;
    ris.acc=0; 
    
%--------------------------------------------------------------------------    
else
    da=0;
    alpha_ad=0;
    ris.pos=0;
    ris.vel=0;
    ris.acc=0;
end
end