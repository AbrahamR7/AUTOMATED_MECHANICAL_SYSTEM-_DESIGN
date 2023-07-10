function ris=McmConstantAcceleration(x,par)
eps=par;

cap=2/eps; 
cam=2/(1-eps);

if(x<= eps)
    ris.acc=cap;
    ris.vel=cap*x;
    ris.pos=0.5*cap*x^2;
else
    ris.acc=-cam;
    ris.vel=cam*(1-x);
    ris.pos=cam*(x-x^2/2-eps/2);
end

end