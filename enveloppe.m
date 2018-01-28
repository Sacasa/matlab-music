
T=01.5;
Fe=44000;
dt = 1/Fe;
t = 0:dt:T-dt;
n = length(t);

x = [0,0.02,0.05,1.2,1.5]; 
v = [0,1,0.6,0.025,0];
Enveloppe = interp1(x,v,t,'pchip');

plot(x,v,'o',t,Enveloppe,'b');
ylim([0 1])
xlabel('Temps (s)')
ylabel('Amplitude')
title("Enveloppe de piano")
