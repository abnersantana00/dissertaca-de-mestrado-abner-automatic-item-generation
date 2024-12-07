pair z0 = (0,0);
pair z1 = (0,60);
pair c0 = (-40,20);
pair c1 = (40,40);

draw(z0..controls c0 and c1..z1, blue);

draw(z0--c0--c1--z1,dashed);
dot("$z_0$",z0,S,red);
dot("$c_0$",c0,W,red);
dot("$c_1$",c1,E,red);
dot("$z_1$",z1,N,red);

pair midpoint(pair a, pair b) {return interp(a,b,0.5);}

pair m0=midpoint(z0,c0);
pair m1=midpoint(c0,c1);
pair m2=midpoint(c1,z1);

draw(m0--m1--m2,dashed);
dot("$m_0$",m0,NW,red);
dot("$m_1$",m1,N,red);
dot("$m_2$",m2,red);

pair m3=midpoint(m0,m1);
pair m4=midpoint(m1,m2);
pair m5=midpoint(m3,m4);

draw(m3--m4,dashed);
dot("$m_3$",m3,NW,red);
dot("$m_4$",m4,NE,red);
dot("$m_5$",m5,N,red);
