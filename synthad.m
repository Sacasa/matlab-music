function s = synthad(a,f,T,Fe)
%        s = synthad(a,f,p,T,Fe)
% synthese additive
% cette fonction cree un son de duree T, 
% compose des partiels f(n), d'amplitude a(n)
% et de phase a l'origine p(n).
% Fe est la frequence d'echantillonnage
%---------------------------------------------

% creation du vecteur temps discret
dt = 1/Fe;
t = 0:dt:T;
n = length(t);

% creation du son, boucle pour ajouter une a une
% les composantes frequentielles
s = zeros(1,n);
K = length(f);
for k = 1:K
    s = s+a(k)*sin(2*pi*f(k)*t);
end

% normalisation pour que les valeurs soient
% toutes dans l'intervalle [-1 +1]

s = s/max(abs(s));


    
