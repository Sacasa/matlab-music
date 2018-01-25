function s = synthadEnveloppe(F,T,Fe)
%        s = synthadEnveloppe(F,p,T,Fe)
% synthese additive
% cette fonction cree un son de duree T, 
% compose des partiels f(n), d'amplitude a(n)
% et de phase a l'origine p(n).
% Fe est la frequence d'echantillonnage
%---------------------------------------------

% creation du vecteur temps discret
dt = 1/Fe;
t = 0:dt:T-dt;
n = length(t);

%Création des tableaux
%a=[100,40,30,20,10,5,15,10,8];
%f=[F,2*F,3*F,4*F,5*F,6*F,7*F,8*F,9*F];

a=[66,100,22, 20,15,11,8,11];
f=[F,2*F,3*F,4*F,5*F,6*F,7*F,8*F];

% %Création de l'enveloppe
% A = linspace(0, 1, 0.1*(T*Fe)); 
% D = linspace(1, 0.8, 0.15*(T*Fe));
% S = linspace(0.8, 0.8, 0.6*(T*Fe)); 
% R = linspace(0.8, 0, 0.15*(T*Fe)); 

%Enveloppe piano
%Paramètres de l'enveloppe
amplitude_de_separation = 0.7;
largeur_poly = 0.45;

%Partie polynomiale de l'enveloppe ( attack)

x1=[0,largeur_poly*0.5*T,largeur_poly*T];
y1=[0.2,0.8,0.2];

 
p= polyfit(x1,y1,2);
p(3) = p(3) - amplitude_de_separation;
r = roots(p);
xsep = r(1,1);
p(3)= p(3) + amplitude_de_separation;

x1i=(0:dt:round(xsep/dt)*dt);
A=polyval(p,x1i);

x2i=(round(xsep/dt)*dt+dt:dt:T-dt);
D=amplitude_de_separation*exp(-(x2i-xsep)/xsep);


Enveloppe = [A D];

% creation du son, boucle pour ajouter une a une
% les composantes frequentielles
s = zeros(1,n);
K = length(f);
for k = 1:K
    s = s+a(k)*Enveloppe.*sin(2*pi*f(k)*t);
end

% normalisation pour que les valeurs soient
% toutes dans l'intervalle [-1 +1]

s = s/max(abs(s));


    
