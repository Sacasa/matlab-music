
T=1.5;
Fe=44000;
dt = 1/Fe;
t = 0:dt:T-dt;
n = length(t);
f=80;

x = [0,0.1,0.2,0.5,0.92,1.2,1.5]; 
v = [0,1,0.5,0.2,0.08,0.025,0];
Enveloppe = interp1(x,v,t,'pchip');
% creation du son, boucle pour ajouter une a une
% les composantes frequentielles
s = zeros(1,n);
K = length(f);
s = Enveloppe.*sin(2*pi*f*t);


% normalisation pour que les valeurs soient
% toutes dans l'intervalle [-1 +1]
s = s/max(abs(s));

plot(x,v,'o',t,s,'r',t,Enveloppe,'b');
ylim([0 1])
xlabel('Temps (s)')
ylabel('Amplitude')
title("Représentation d'un son pur à 40Hz")
