
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
plot(t,s),grid                        %trac� temporel 
xlabel('Temps(sec)');
ylabel('Trac� temporel')


    
% 2- TRACES DANS LE DOMAINE FREQUENTIEL :
%-----------------------------------------
% Calcul des transform�es de Fourier
Sf = (1/N)*fft(s);          

f = [0:(N)-1]*Fe/N;                 %vecteur fr�quence

% Trac�
subplot(212)

plot(f((N/2)+1:N)-Fe/2,abs(Sf(1:(N/2)))),grid
xlabel('Fr�quences (Hz)')
ylabel('Trac� fr�quentiel')





