T=60/71;
Fe=8000;
dt=1/Fe;

amplitude_de_separation = 0.85;
largeur_poly = 0.4;

x1=[0,largeur_poly*0.5*T,largeur_poly*T];
y1=[0.2,1,0.2];
T=60/71;
Fe=8000;
dt=1/Fe;

amplitude_de_separation = 0.85;
largeur_poly = 0.4;

x1=[0,largeur_poly*0.5*T,largeur_poly*T];
y1=[0.2,1,0.2];

 
p= polyfit(x1,y1,2);
p(3) = p(3) - amplitude_de_separation;
r = roots(p);
xsep = r(1,1);
p(3)= p(3) + amplitude_de_separation;
val = polyval(p,xsep);


x1i=(0:dt:round(xsep/dt)*dt);
A=polyval(p,x1i);

x2i=(round(xsep/dt)*dt:dt:T);
D=amplitude_de_separation*exp(-(x2i-xsep)/xsep);

plot(x1i,A,'b',x2i,D,'r');
 
p= polyfit(x1,y1,2);
p(3) = p(3) - amplitude_de_separation;
r = roots(p);
xsep = r(1,1);
p(3)= p(3) + amplitude_de_separation;
val = polyval(p,xsep);


x1i=(0:dt:round(xsep/dt)*dt);
A=polyval(p,x1i);

x2i=(round(xsep/dt)*dt:dt:T);
D=amplitude_de_separation*exp(-(x2i-xsep)/xsep);

plot(x1i,A,'b',x2i,D,'r');