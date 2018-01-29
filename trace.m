
function trace(s,Fe);

%*************************************************************************************
%       OBSERVATION DE SIGNAUX AUDIO
%*************************************************************************************

% 1- TRACES DANS LE DOMAINE TEMPOREL :
%--------------------------------------
N = length(s);
t = [0:N-1]/Fe;                      %vecteur temps

figure 

subplot(211)
plot(t,s),grid                        %tracé temporel 
xlabel('Temps(sec)');
ylabel('Tracé temporel')
title("Tracé temporel d'un La 3");


    
% 2- TRACES DANS LE DOMAINE FREQUENTIEL :
%-----------------------------------------
% Calcul des transformées de Fourier
Sf = (1/N)*fft(s);          

f = [0:(N)-1]*Fe/N;                 %vecteur fréquence

% Tracé
subplot(212)

plot(f((N/2)+1:N)-Fe/2,abs(Sf(1:(N/2)))),grid
xlabel('Fréquences (Hz)')
ylabel('Tracé fréquentiel')
title("Tracé fréquentiel d'un La 3");






