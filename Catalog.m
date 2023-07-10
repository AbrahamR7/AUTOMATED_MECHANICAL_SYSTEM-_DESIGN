mot(1).nome='SIMOTICS S-1FL6 Low Inertia 01'; 
mot(1).J= 176*10^-4; 
mot(1).Cn=44.6; 
mot(1).alfa=mot(1).Cn^2/mot(1).J; 
mot(1).wm=3000*2*pi/60;

mot(2).nome='SIMOTICS S-1FL6 Low Inertia 02'; 
mot(2).J=220*10^-4; 
mot(2).Cn=70.0; 
mot(2).alfa=mot(2).Cn^2/mot(2).J; 
mot(2).wm=3000*2*pi/60;

mot(3).nome='SIMOTICS S-1FL6 High Inertia 01'; 
mot(3).J=315*10^-4; 
mot(3).Cn=95.5; 
mot(3).alfa=mot(3).Cn^2/mot(3).J; 
mot(3).wm=3000*2*pi/60;

mot(4).nome='SIMOTICS S-1FL6 High Inertia 02'; 
mot(4).J=489*10^-4; 
mot(4).Cn=140 ; 
mot(4).alfa=mot(4).Cn^2/mot(4).J; 
mot(4).wm=2500*2*pi/60;

mot(5).nome='SIMOTICS S-1FL6 High Inertia 03'; 
mot(5).J=627*10^-4; 
mot(5).Cn=191  ; 
mot(5).alfa=mot(5).Cn^2/mot(5).J; 
mot(5).wm=2500*2*pi/60;


mot(6).nome='SIMOTICS S-1FL6 High Inertia 02'; 
mot(6).J=764*10^-4; 
mot(6).Cn=236 ; 
mot(6).alfa=mot(6).Cn^2/mot(6).J; 
mot(6).wm=2500*2*pi/60;

mot(7).nome='SIMOTICS S-1FL6 High Inertia 02'; 
mot(7).J=7.26*10^-4; 
mot(7).Cn=1.4; 
mot(7).alfa=mot(7).Cn^2/mot(7).J; 
mot(7).wm=3000*2*pi/60;

mot(8).nome='SIMOTICS S-1FL6 High Inertia 02'; 
mot(8).J=11.6*10^-4; 
mot(8).Cn=4.8; 
mot(8).alfa=mot(8).Cn^2/mot(8).J; 
mot(8).wm=3000*2*pi/60;

mot(9).nome='SIMOTICS S-1FL6 Low Inertia 02'; 
mot(9).J=99.7*10^-4; 
mot(9).Cn=23.9; 
mot(9).alfa=mot(9).Cn^2/mot(9).J; 
mot(9).wm=3000*2*pi/60;

mot(10).nome='SIMOTICS S-1FL6 Low Inertia 02'; 
mot(10).J=151*10^-4; 
mot(10).Cn= 33.4 ; 
mot(10).alfa=mot(10).Cn^2/mot(10).J; 
mot(10).wm=3000*2*pi/60;

%---------------------------- Reducer ------------------------------------
red(1).name='CALM30-10/1-56C';
red(1).tau=1/5;

red(2).name='CALM30-10/1-56C';
red(2).tau=1/10;

red(3).name='CALM30-15/1-56C';
red(3).tau=1/15;

red(4).name='CALM30-20/1-56C';
red(4).tau=1/20;

red(5).name='CALM30-25/1-56C';
red(5).tau=1/30;

red(6).name='CALM30-40/1-56C';
red(6).tau=1/40;

red(7).name='CALM30-50/1-56C';
red(7).tau=1/50;

red(8).name='CALM30-60/1-56C';
red(8).tau=1/60;

red(9).name='CALM30-80/1-56C';
red(9).tau=1/80;

red(10).name='CALM30-100/1-56C';
red(10).tau=1/100;









