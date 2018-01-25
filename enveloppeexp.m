
T=60/71;
Fe=44000;
dt=1/Fe;

amplitude_de_separation = 0.8;
largeur_poly = 0.5;

%Partie polynomiale de l'enveloppe ( attack)

x1=[0,largeur_poly*0.5*T,largeur_poly*T];
y1=[0,1,0];

 
p= polyfit(x1,y1,2);
p(3) = p(3) - amplitude_de_separation;
r = roots(p);
xsep = r(1,1);
p(3)= p(3) + amplitude_de_separation;

x1i=(0:dt:round(xsep/dt)*dt);
A=polyval(p,x1i);

x2i=(round(xsep/dt)*dt+dt:dt:T-dt);
D=amplitude_de_separation*exp(-(x2i-xsep)/xsep).^(1.5);


Enveloppe = [A D];