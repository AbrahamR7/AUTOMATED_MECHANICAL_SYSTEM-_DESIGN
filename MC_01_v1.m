function ris=MC_01_v1(alpha)
a1=80; a2=360; 
in=[0 a1 a2];
xv_1.v=0.33; xv_1.w=0.66;
h=0.6;h1=0.8;h2=1;h3=1.2;h4=1.4;h5=1.6;
%---------------------------- rise ----------------------------------------
if(alpha>= in(1) && alpha < in(2)) 
    da=(in(2)-in(1));
    da2=da/2;
    alpha_ad=(alpha-in(1))/da;
    out=McmSshape(alpha_ad,xv_1);                  %Sshape motion curve 
    %out1=McmSshape(alpha_ad,xv_1); 
    ris.pos=h*out.pos;
    ris.pos1=h1*out.pos;
    ris.pos2=h2*out.pos;    
    ris.pos3=h3*out.pos;
    ris.pos4=h4*out.pos;
    ris.pos5=h5*out.pos;    
%---------------------------- dwell ---------------------------------------    
elseif(alpha>=in(2) && alpha<in(3))
    da=(in(3)-in(2));
    alpha_ad=(alpha-in(2))/da;
    ris.pos=h;
    ris.pos1=h1;
    ris.pos2=h2;
    ris.pos3=h3;
    ris.pos4=h4;
    ris.pos5=h5;
%--------------------------------------------------------------------------     
else
    da=0;
    alpha_ad=0;
    ris.pos=0;
    ris.pos1=0;
    ris.pos2=0;
    ris.pos3=0;
    ris.pos4=0;
    ris.pos5=0;
end
end