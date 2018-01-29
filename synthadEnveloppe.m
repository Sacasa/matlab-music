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
a=[1,0.27,0.20,0.13,0.09,0.08,0.11,0.08];
f=[F,2*F,3*F,4*F,5*F,6*F,7*F,8*F];

%Enveloppe piano

v= [0,1,0.6,0.3,0.2,0];
x=[0,0.03,0.25,0.7,1.05,1.4]*T/1.4;
Enveloppe = interp1(x,v,t,'pchip');
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


    
