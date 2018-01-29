%##################################################
%#                                                #
%#              Constantes utiles                 #
%#                                                #
%##################################################

Fe = 44000;
T = 60/72;
dt = 1/Fe;
t = 0:dt:T-dt;

%##################################################
%#                                                #
%#           Creation des frequences              #
%#                                                #
%##################################################

fdo1 = 65.41;
fre1 =  fdo1*2^(2/12);
fmi1 = fdo1*2^(4/12);
ffa1 = fdo1*2^(5/12);
fsol1 = fdo1*2^(7/12);
fla1 = fdo1*2^(9/12);
fsi1 = fdo1*2^(11/12);

fdo=[fdo1,fdo1*2,fdo1*4,fdo1*8,fdo1*16,fdo1*32,fdo1*64];
fre=[fre1,fre1*2,fre1*4,fre1*8,fre1*16,fre1*32,fre1*64];
fmi=[fmi1,fmi1*2,fmi1*4,fmi1*8,fmi1*16,fmi1*32,fmi1*64];
ffa=[ffa1,ffa1*2,ffa1*4,ffa1*8,ffa1*16,ffa1*32,ffa1*64];
fsol=[fsol1,fsol1*2,fsol1*4,fsol1*8,fsol1*16,fsol1*32,fsol1*64];
fla=[fla1,fla1*2,fla1*4,fla1*8,fla1*16,fla1*32,fla1*64];
fsi=[fsi1,fsi1*2,fsi1*4,fsi1*8,fsi1*16,fsi1*32,fdo1*64];

fsol1d = fsol(1)*2^(1/12);

fsol2d = fsol(2)*2^(1/12);
fre2d = fre(1)*2^(1/12);

fre3d = fre(3)*2^(1/12);
fdo3d= fdo(3)*2^(1/12);
fla3d= fla(3)*2^(1/12);
fsol3d = fsol(3)*2^(1/12);

fla4d = fla(4)*2^(1/12);
fsol4d= fsol(4)*2^(1/12);
fre4d= fre(4)*2^(1/12);

fla5d = fla(5)*2^(1/12);
fre5d = fre(5)*2^(1/12);
fsol5d = fsol(5)*2^(1/12);

fsol6d =fsol(6)*2^(1/12);
fla6d = fla(6)*2^(1/12);
fre6d = fre(6)*2^(1/12);

%##################################################
%#                                                #
%#              Creation des notes                #
%#                                                #
%##################################################

%Blancs

vide = zeros(1,length(t));
vide05 = zeros(1,length(t)/2);

%Octave 1

sol1nl = synthadEnveloppe(fsol(1),T*0.5,Fe);
si1nl = synthadEnveloppe(fsi(1),T*0.5,Fe);
mi1b = synthadEnveloppe(fmi(1),T*2,Fe);
do1np = synthadEnveloppe(fdo(1),T*1.5,Fe);
re1np = synthadEnveloppe(fre(1),T*1.5,Fe);
mi1np = synthadEnveloppe(fmi(1),T*1.5,Fe);
do1nll = synthadEnveloppe(fdo(1),T*0.25,Fe);
re1nll = synthadEnveloppe(fre(1),T*0.25,Fe);
mi1nll = synthadEnveloppe(fmi(1),T*0.25,Fe);
sol1dnll = synthadEnveloppe(fsol1d,T*0.25,Fe);
sol1dnl = synthadEnveloppe(fsol1d,T*0.5,Fe);
sol1nll = synthadEnveloppe(fsol(1),T*0.25,Fe);
si1nll = synthadEnveloppe(fsi(1),T*0.25,Fe);


%Octave 2

do2nl = synthadEnveloppe(fdo(2),T*0.5,Fe);
re2nl = synthadEnveloppe(fre(2),T*0.5,Fe);
fa2nl = synthadEnveloppe(ffa(2),T*0.5,Fe);
sol2nl = synthadEnveloppe(fsol(2),T*0.5,Fe);
si2nl = synthadEnveloppe(fsi(2),T*0.5,Fe);
re2dnl = synthadEnveloppe(fre2d,T*0.5,Fe);
sol2dnll = synthadEnveloppe(fsol2d,T*0.25,Fe);
sol2dnl = synthadEnveloppe(fsol2d,T*0.5,Fe);
sol2nll = synthadEnveloppe(fsol(2),T*0.25,Fe);
si2nll = synthadEnveloppe(fsi(2),T*0.25,Fe);

% Octave 3

do3nl = synthadEnveloppe(fdo(3),T*0.5,Fe);
re3nl = synthadEnveloppe(fre(3),T*0.5,Fe);
mi3nl = synthadEnveloppe(fmi(3),T*0.5,Fe);
fa3nl = synthadEnveloppe(ffa(3),T*0.5,Fe);
sol3nl = synthadEnveloppe(fsol(3),T*0.5,Fe);
la3nl = synthadEnveloppe(fla(3),T*0.5,Fe);
si3nl = synthadEnveloppe(fsi(3),T*0.5,Fe);
si3np = synthadEnveloppe(fsi(3),T*1.25,Fe);
si3nll = synthadEnveloppe(fsi(3),T*0.25,Fe);
re3b = synthadEnveloppe(fre(3),T*2,Fe);
do3b = synthadEnveloppe(fdo(3),T*2,Fe);
sol3b = synthadEnveloppe(fsol(3),T*2,Fe);
do3db = synthadEnveloppe(fdo3d,T*2,Fe);
re3dbr = synthadEnveloppe(fre3d,T*4,Fe);
la3db= synthadEnveloppe(fla3d,T*2,Fe);
do3dnl = synthadEnveloppe(fdo3d,T*0.5,Fe);
re3dnl = synthadEnveloppe(fre3d,T*0.5,Fe);
sol3dnl= synthadEnveloppe(fsol3d,T*0.5,Fe);
la3dnl= synthadEnveloppe(fla3d,T*0.5,Fe);

% Octave 4

do4nl = synthadEnveloppe(fdo(4),T*0.5,Fe);
re4nl = synthadEnveloppe(fre(4),T*0.5,Fe);
mi4nl = synthadEnveloppe(fmi(4),T*0.5,Fe);
fa4nl = synthadEnveloppe(ffa(4),T*0.5,Fe);
sol4nl = synthadEnveloppe(fsol(4),T*0.5,Fe);
la4dn = synthadEnveloppe(fla4d,T*1,Fe);
sol4dn = synthadEnveloppe(fsol4d,T*1,Fe);
re4dn = synthadEnveloppe(fre4d,T*1,Fe);
do4np = synthadEnveloppe(fdo(4),T*1.25,Fe);
do4ncp = synthadEnveloppe(fdo(4),T*0.75,Fe);
re4dncp = synthadEnveloppe(fre4d,T*0.75,Fe);
re4ncp = synthadEnveloppe(fre(4),T*0.75,Fe);
sol4ncp = synthadEnveloppe(fsol(4),T*0.75,Fe);
sol4dncp = synthadEnveloppe(fsol4d,T*0.75,Fe);
la4dnl = synthadEnveloppe(fla4d,T*0.5,Fe);
re4dnl = synthadEnveloppe(fre4d,T*0.5,Fe);
sol4dnl = synthadEnveloppe(fsol4d,T*0.5,Fe);
si4nll = synthadEnveloppe(fsi(4),T*0.25,Fe);
re4nll = synthadEnveloppe(fre(4),T*0.25,Fe);
re4dnll = synthadEnveloppe(fre4d,T*0.25,Fe);
fa4nll = synthadEnveloppe(ffa(4),T*0.25,Fe);

% Octave 5

do5nl = synthadEnveloppe(fdo(5),T*0.5,Fe);
re5dn = synthadEnveloppe(fre5d,T*1,Fe);
re5dnl = synthadEnveloppe(fre5d,T*0.5,Fe);
la5dn = synthadEnveloppe(fla5d,T*1,Fe);
fa5nl = synthadEnveloppe(ffa(5),T*0.5,Fe);
sol5n = synthadEnveloppe(fsol(5),T*1,Fe);
sol5nl = synthadEnveloppe(fsol(5),T*0.5,Fe);
sol5dn = synthadEnveloppe(fsol5d,T*1,Fe);

% Octave 6

do6nl = synthadEnveloppe(fdo(6),T*0.5,Fe);
la6dn = synthadEnveloppe(fla6d,T*1,Fe);
sol6n = synthadEnveloppe(fsol(6),T*1,Fe);
sol6dn = synthadEnveloppe(fsol6d,T*1,Fe);
fa6nl = synthadEnveloppe(ffa(6),T*0.5,Fe);
re6dnl = synthadEnveloppe(fre6d,T*0.5,Fe);

%##################################################
%#                                                #
%#          Creation de la melodie                #
%#          4 mesures par temps                   #
%#                                                #
%##################################################

MelD=[ vide,vide,vide,vide...
       vide,vide,vide,vide...
       vide,vide,vide,vide...
       vide,vide,vide,vide...
       ...
       vide,vide,vide,vide...
       vide,vide,vide,vide...
       mean(cat(1,do4nl,do5nl),1),sol4nl, mean(cat(1,do4nl,do5nl),1),sol4nl,mean(cat(1,la3dnl,la4dnl),1),fa4nl,mean(cat(1,la3dnl,la4dnl),1),fa4nl ...
       mean(cat(1,sol3dnl,sol4dnl),1),fa4nl,mean(cat(1,sol3dnl,sol4dnl),1),fa4nl, mean(cat(1,sol3nl,sol4nl),1),fa4nl, mean(cat(1,sol3nl,sol4nl),1),re4nl...
       ...
       re4dnl, do4nl, sol3dnl, do4nl, re4dnl, do4nl, sol3dnl, do4nl...
       re4nl, la3dnl,fa3nl, la3dnl, re4nl,si3nl,sol3nl,si3nl...
       la3db, vide...
       vide,vide...
       ...
       vide05, do4nl, mean(cat(1,do4nl,sol4nl,re4dnl),1), mean(cat(1,do5nl,do6nl),1), mean(cat(1,la4dn,la5dn),1),  mean(cat(1,sol4dn,sol5dn),1)...
       mean(cat(1,sol5n,sol6n),1),mean(cat(1,sol5dn,sol6dn),1),mean(cat(1,sol5n,sol6n),1), mean(cat(1,fa5nl,fa6nl),1), mean(cat(1,re5dnl,re5dnl),1)...
       mean(cat(1,re5dnl,re5dnl),1), do5nl, mean(cat(1,do5nl,re5dnl,sol5nl),1), mean(cat(1,do5nl,do6nl),1), mean(cat(1,la5dn,la6dn),1),  mean(cat(1,sol5dn,sol6dn),1) ...   
       mean(cat(1,sol5n,sol6n),1),  mean(cat(1,sol5dn,sol6dn),1),mean(cat(1,sol5n,sol6n),1),mean(cat(1,fa5nl,fa6nl),1), mean(cat(1,re5dnl,re6dnl),1)...
       ...
       mean(cat(1,re4dn,re5dn),1), mean(cat(1,do4ncp,re4dncp,sol4ncp),1), do4np, mean(cat(1,do4ncp,re4dncp,sol4ncp),1)... #3.75
       do4np, mean(cat(1,do4ncp,re4dncp,sol4ncp),1), do4np, mean(cat(1,do4ncp,re4dncp,sol4dncp),1)   ...#4 toujours 0.25 de retard
       do4np, mean(cat(1,re4ncp,sol4ncp),1), si3np, mean(cat(1,si3nll,fa4nll),1), re4nll, re4nll, re4dnll...
       vide...     
  
];  

MelG=[ do3dnl, la3dnl, sol3nl, la3dnl, do3dnl,la3dnl, sol3nl, la3dnl ...
       do3dnl, la3dnl, sol3nl, la3dnl, do3dnl,la3dnl, sol3nl, la3dnl ...
       do3nl, sol3dnl, fa3nl, sol3dnl,do3nl, sol3dnl, fa3nl, sol3dnl ...
       do3nl, sol3dnl, fa3nl, sol3dnl,do3nl, sol3dnl, fa3nl, sol3dnl ...
       ...
       re3nl, sol3dnl, fa3nl, sol3dnl, re3nl, sol3dnl,fa3nl, sol3dnl ...
       re3nl, si3nl, sol3dnl, si3nl, re3nl, si3nl, sol3dnl, si3nl ...
       sol3b, do3db...
       do3b, re3b ...
       ...
       re3dbr...
       re3b, re3b...
       re3b, vide... 
       vide,vide...
       ...
       mean(cat(1,do2nl,do3nl),1), do2nl, re3dnl, do2nl, mean(cat(1,re2nl,re3nl),1),re2nl, fa3nl, re2nl...
       mean(cat(1,re2dnl,re3dnl),1), re2dnl, sol3nl, re2dnl,  mean(cat(1,si2nl,si3nl),1), si2nl, re3nl, si2nl...
       mean(cat(1,do2nl,do3nl),1), do2nl, re3dnl, do2nl,  mean(cat(1,re2nl,re3nl),1), re2nl, fa2nl, re2nl  ...
       mean(cat(1,re2dnl,re3dnl),1), re2dnl, sol3nl, re2dnl, mean(cat(1,si2nl,si3nl),1), si2nl, re3nl, si2nl ... 
       ...
       mean(cat(1,do2nl,do3nl),1), do2nl, re3dnl,do2nl, mean(cat(1,do2nl,do3nl),1), do2nl, re3dnl, do2nl ...
       mean(cat(1,do2nl,do3nl),1), do2nl, do3nl, do2nl, sol2dnll, sol1dnll, mean(cat(1,sol1dnl,sol2dnl),1),mean(cat(1,sol1dnl,sol2dnl),1),mean(cat(1,sol1dnl,sol2dnl),1)...
       sol2nll, mean(cat(1,sol1nll,sol2nll),1),mean(cat(1,sol1nl,sol2nl),1),mean(cat(1,sol1nl,sol2nl),1),mean(cat(1,sol1nl,sol2nl),1),si2nll, mean(cat(1,si1nll,si2nll),1),mean(cat(1,si1nl,si2nl),1),mean(cat(1,si1nl,si2nl),1),mean(cat(1,si1nl,si2nl),1)...   
       vide...      
       
];

%##################################################
%#                                                #
%#                Traitements                     #
%#           Stereo/chorus/passe bas              #
%#                                                #
%##################################################

%On complete de zeros pour avoir la meme longueur sur les deux voies
MelD(numel(MelG)) = 0;

%On rehausse la composante plus aigue en vue du passe bas
%Méthode archaïque mais qui donne le résultat escompté
MelD=MelD*1.3;

%Stereo
%On choisit de faire un ratio de 70/30 pour que l'ecoute soit correcte meme
%quand une seule des voies est presente

MelG_s = (0.7*MelG)+(0.3*MelD); 
MelG_s = MelG_s/max(abs(MelG_s));
MelD_s =(0.7*MelD)+(0.3*MelG) ; 
MelD_s =MelD_s/max(abs(MelD_s));

%Effet de chorus, 1800/44000 = 0.04 "note"
Mel_G_c = chorus(MelG_s,1800);
Mel_D_c = chorus(MelD_s,1800);
Mel_c=[Mel_G_c;Mel_D_c];
audiowrite('ForTheDamagedCoda.wav',Mel_c.',Fe);
