Fe = 8000;
T = 60/71;
dt = 1/Fe;
t = 0:dt:T-dt;


%Octave 2
fdo2b = 138.59 ;
fdo2 = 130.81;
fre2 = 146.83; 
fmi2 = 164.81;
ffa2 = 174.61; 
fsol2 = 196;
fla2 = 220;
fsi2 = 246.94;

%Octave 3

fdo3 = 261.63;
fre3 =  293.66;
fmi3 = 329.63;
ffa3 = 349.23;
fsol3 = 392;
fla3 = 440;
fsi3 = 493.88;

%Octave 4

fdo4 = 523.25;
fre4 = 587.33;
fmi4 = 659.26;
ffa4 = 698.46;
fsol4 = 783.99;
fla4= 880;
fsi4 = 987.77;


vide = zeros(1,length(t));
vide05 = zeros(1,length(t)/2);
%Octave 2

do2bnl = synthadEnveloppe(fdo2b,T*0.5,Fe);
do2nl = synthadEnveloppe(fdo2,T*0.5,Fe);
re2nl = synthadEnveloppe(fre2,T*0.5,Fe);
mi2nl = synthadEnveloppe(fmi2,T*0.5,Fe);
fa2nl = synthadEnveloppe(ffa2,T*0.5,Fe);
sol2nl = synthadEnveloppe(fsol2,T*0.5,Fe);
la2nl = synthadEnveloppe(fla2,T*0.5,Fe);
si2nl = synthadEnveloppe(fsi2,T*0.5,Fe);

mi2b = synthadEnveloppe(fmi2,T*2,Fe);

re2np = synthadEnveloppe(fre2,T*1.5,Fe);
mi2np = synthadEnveloppe(fmi2,T*1.5,Fe);

re2nll = synthadEnveloppe(fre2,T*0.25,Fe);
mi2nll = synthadEnveloppe(fmi2,T*0.25,Fe);


do2bn = synthadEnveloppe(fdo2b,T,Fe);
do2n = synthadEnveloppe(fdo2,T,Fe);
re2n = synthadEnveloppe(fre2,T,Fe);
mi2n = synthadEnveloppe(fmi2,T,Fe);
fa2n = synthadEnveloppe(ffa2,T,Fe);
sol2n = synthadEnveloppe(fsol2,T,Fe);
la2n = synthadEnveloppe(fla2,T,Fe);
si2n = synthadEnveloppe(fsi2,T,Fe);

% Octave 3

do3nl = synthadEnveloppe(fdo3,T*0.5,Fe);
re3nl = synthadEnveloppe(fre3,T*0.5,Fe);
mi3nl = synthadEnveloppe(fmi3,T*0.5,Fe);
fa3nl = synthadEnveloppe(ffa3,T*0.5,Fe);
sol3nl = synthadEnveloppe(fsol3,T*0.5,Fe);
la3nl = synthadEnveloppe(fla3,T*0.5,Fe);
si3nl = synthadEnveloppe(fsi3,T*0.5,Fe);

re3b = synthadEnveloppe(fre3,T*2,Fe);


do3n = synthadEnveloppe(fdo3,T,Fe);
re3n = synthadEnveloppe(fre3,T,Fe);
mi3n = synthadEnveloppe(fmi3,T,Fe);
fa3n = synthadEnveloppe(ffa3,T,Fe);
sol3n = synthadEnveloppe(fsol3,T,Fe);
la3n = synthadEnveloppe(fla3,T,Fe);
si3n = synthadEnveloppe(fsi3,T,Fe);

% Octave 4

do4nl = synthadEnveloppe(fdo4,T*0.5,Fe);
re4nl = synthadEnveloppe(fre4,T*0.5,Fe);
mi4nl = synthadEnveloppe(fmi4,T*0.5,Fe);
fa4nl = synthadEnveloppe(ffa4,T*0.5,Fe);
sol4nl = synthadEnveloppe(fsol4,T*0.5,Fe);
la4nl = synthadEnveloppe(fla4,T*0.5,Fe);
si4nl = synthadEnveloppe(fsi4,T*0.5,Fe);

do4n = synthadEnveloppe(fdo4,T,Fe);
re4n = synthadEnveloppe(fre4,T,Fe);
mi4n = synthadEnveloppe(fmi4,T,Fe);
fa4n = synthadEnveloppe(ffa4,T,Fe);
sol4n = synthadEnveloppe(fsol4,T,Fe);
la4n = synthadEnveloppe(fla4,T,Fe);
si4n = synthadEnveloppe(fsi4,T,Fe);



MelD = [ %vide, vide,vide,vide ...
         %vide, vide,vide,vide ...
         vide, vide,vide,vide ...
         vide, vide,vide,vide ...
         ...
         vide, vide,vide,vide ...
         vide, vide,vide,vide ...
         do4nl, sol3nl, do4nl, sol3nl,do4nl, sol3nl, do4nl, sol3nl...
         la3nl, fa3nl,la3nl, fa3nl, sol3nl,fa3nl,sol3nl, re3nl...
         ...
         mi3nl, do3nl, la2nl, do3nl, vide05, do3nl,la2nl,do3nl ...
         re3b, vide,re3b,vide ...
         vide,vide ...
         vide05, do3nl, mi3nl, do3nl, vide05, re3nl,fa3nl,re3nl...
         ...
       ];


MelG = [ %do2bnl, si2nl, sol2nl, si2nl, do2nl, si2nl, sol2nl, si2nl ... 
         %do2bnl, si2nl, sol2nl, si2nl, do2nl, si2nl, sol2nl, si2nl ...
         do2bnl, si2nl, sol2nl, si2nl, do2nl, si2nl, sol2nl, si2nl ...
         do2nl, si2nl, sol2nl, si2nl, do2nl, si2nl, mi2nl, si2nl ...
         ...
         re2nl, si2nl, fa2nl, si2nl, re2nl, si2nl, fa2nl, si2nl ...
         re2nl, si2nl, la2nl, si2nl, re2nl, si2nl, la2nl, si2nl ...
         do3n, do3n, si2n,si2n...
         la2n, la2n, sol2n,sol2n...
         ...         
         mi2b,vide,mi2b,vide ...
         re2nl, si2nl, fa2nl, si2nl, re2nl, si2nl, sol2nl,si2nl ...
         vide,vide ...
         re2np, re2nll, mi2np, mi2nll...
         ...         
        ];
    
MelG(numel(MelD)) = 0;
    

Mel = cat(1,MelG,MelD);
Mel = mean(Mel,1);

audiowrite('mel.wav',Mel,Fe);