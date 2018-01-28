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
a=[45,32,2,7,4,2,5,1].*(100/45);
f=[F,2*F,3*F,4*F,5*F,6*F,7*F,8*F];

% %Création de l'enveloppe
% A = linspace(0, 1, 0.1*(T*Fe)); 
% D = linspace(1, 0.8, 0.15*(T*Fe));
% S = linspace(0.8, 0.8, 0.6*(T*Fe)); 
% R = linspace(0.8, 0, 0.15*(T*Fe)); 

%Enveloppe piano

x = [0,0.02,0.05,1.2,1.5]; 
v = [0,1,0.6,0.025,0];

xq = 0:dt:1.5;
Enveloppe = interp1(x,v,xq,'pchip');
if length(t) <= length(Enveloppe)
    Enveloppe = Enveloppe(1:length(t));
else 
    Enveloppe(numel(t)) = 0;
end
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


    
