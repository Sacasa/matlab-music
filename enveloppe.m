
T=0.5;
Fe=44000;
dt = 1/Fe;
t = 0:dt:T-dt;
n = length(t);


% x = [0,0.05,0.1,0.5,0.92,1.2,1.5]; 
% v = [0,1,0.8,0.3,0.08,0.025,0];
v= [0,1,0.6,0.3,0.2,0];
x=[0,0.03,0.25,0.7,1.05,1.4]*T/1.4;
Enveloppe = interp1(x,v,t,'pchip');
plot(x,v,'o',t,Enveloppe,'b');
ylim([0 1])
xlabel('Temps (s)')
ylabel('Amplitude')
title("Enveloppe de piano")
