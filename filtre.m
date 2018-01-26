clear
close all


%RECUPERATION DU SON CONTENU DANS LE FICHIER ".wav" :
%-----------------------------------------------------
%[x,Fe] = audioread('PereNoel.wav'); 
[x,Fe] = audioread('melStereoChorus.wav'); 

%x est une matrice de N lignes et 2 colonnes
% N (nombre de lignes) correspondant au nombre d'�chantillons temporels
% 2 (nombre de colonnes) correspond aux 2 voies (gauche et droite) du son
% en st�r�o
%Fe est la fr�quence d'�chantillonnage avec laquelle le son a �t� num�ris�e
%avant sauvegarde dans le fichier (.wav)

[N,col] = size(x);

%Remarque: on ne tracera qu'une seule des 2 voie (on a choisi la voie de
%gauche)

%TRACES DANS LE DOMAINE TEMPOREL :
%--------------------------------------
t = [0:N-1]/Fe;  
% %*************************************************************************************
%              TRAITEMENTS --> filtrage
% %*************************************************************************************
%A- Accentuation des basses (basses fr�quences)
%-----------------------------------------------
%partie � compl�ter
R = 17000 ;  %18000
C = 0.1*10^(-6);
b0 = 1;
b1 = 1;
a0 = 1+2*R*C*Fe;
a1 = 1-2*R*C*Fe;

son_bass = zeros(size(x));
%Filtrage des 2 voies
son_bass(:,1)=filter([b0,b1],[a0,a1],x(:,1));
son_bass(:,2)=filter([b0,b1],[a0,a1],x(:,2));
          
audiowrite('melPB.wav',son_bass,Fe)






