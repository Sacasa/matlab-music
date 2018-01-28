clear
close all

[x,Fe] = audioread('ForTheDamagedCoda.wav'); 

[N,col] = size(x);
t = [0:N-1]/Fe;  

%Passe bas

R = 7500 ;  
C = 0.1*10^(-6);
b0 = 1;
b1 = 1;
a0 = 1+2*R*C*Fe;
a1 = 1-2*R*C*Fe;

son_bass = zeros(size(x));
%Filtrage des 2 voies

son_bass(:,1)=filter([b0,b1],[a0,a1],x(:,1));
son_bass(:,2)=filter([b0,b1],[a0,a1],x(:,2));
          
audiowrite('ForTheDamagedCoda.wav',son_bass,Fe)






