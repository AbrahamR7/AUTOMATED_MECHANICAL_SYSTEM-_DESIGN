function ris=MC_01(alpha,h)
%-------------------------- parameters ------------------------------------
a1=80; a2=360; 
in=[0 a1 a2];
%xv_1= 0.2;               %<<<<< Con.Acc motion curve parameters
%xv_1=0;                  %<<<<< Cycloidal or cubic motion curve parameters
xv_1.v=0.33; xv_1.w=0.66; %<<<<< Sshape motion curve parameters

%---------------------------- rise ----------------------------------------
if(alpha>= in(1) && alpha < in(2)) 
    da=(in(2)-in(1));
    da2=da/2;
    alpha_ad=(alpha-in(1))/da;
    % out=McmConstantAcceleration(alpha_ad,xv_1);  %Con.Acc motion curve
    % out=McmCubic(alpha_ad,xv_1);                 %cubic motion curve
    % out=McmCycloidal(alpha_ad,xv_1);             %Cycloidal motion curve
    out=McmSshape(alpha_ad,xv_1);                  %Sshape motion curve 
    ris.pos=h*out.pos;
    ris.vel=h/deg2rad(da)*out.vel;
    ris.acc=h/(deg2rad(da))^2*out.acc;
    
%---------------------------- dwell ---------------------------------------    
elseif(alpha>=in(2) && alpha<in(3))
    da=(in(3)-in(2));
    alpha_ad=(alpha-in(2))/da;
    ris.pos=h;
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