Fe = 44000;
T = 60/72;
dt = 1/Fe;
t = 0:dt:T-dt;

%Octave 1
fdo1b = 69.30;
fdo1 = 65.41;
fre1 =  73.42;
fmi1 = 82.41;
ffa1 = 87.31;
fsol1 = 98;
fla1 = 110;
fsi1 = 123.47;

fsol1d = 103.83;

%Octave 2
fdo2b = 138.59 ;
fdo2 = 130.81;
fre2 = 146.83; 
fmi2 = 164.81;
ffa2 = 174.61; 
fsol2 = 196;
fla2 = 220;
fsi2 = 246.94;

fsol2d = 207.65;
fre2d = 156;

%Octave 3

fdo3 = 261.63;
fre3 =  293.66;
fmi3 = 329.63;
ffa3 = 349.23;
fsol3 = 392;
fsol3b=370;
fla3 = 440;
fsi3 = 493.88;

fre3d = 311 ;
fdo3d= 277;
fla3d= 466;
fsol3d = 415.3;
fre3b = 277 ;
fla3b= 415;

%Octave 4

fdo4 = 523.25;
fre4 = 587.33;
fmi4 = 659.26;
ffa4 = 698.46;
fsol4 = 783.99;
fla4= 880;
fsi4 = 987.77;
fla4d = 932;
fsol4d= 831;
fre4d= 622;

%Octave 5

fdo5 = 1046.5;
fre5d=1244;
fla5d = 1865;
fsol5d = 1661;
fsol5 =1568;
ffa5=1397 ;

%Octave 6

fdo6 = 2093;
fsol6d =3332;
fsol6 = 3136;
ffa6= 2794;
fla6d = 3729;
fre6d = 2489;


vide = zeros(1,length(t));
vide05 = zeros(1,length(t)/2);
%Octave 1

do1bnl = synthadEnveloppe(fdo1b,T*0.5,Fe);
do1nl = synthadEnveloppe(fdo1,T*0.5,Fe);
re1nl = synthadEnveloppe(fre1,T*0.5,Fe);
mi1nl = synthadEnveloppe(fmi1,T*0.5,Fe);
fa1nl = synthadEnveloppe(ffa1,T*0.5,Fe);
sol1nl = synthadEnveloppe(fsol1,T*0.5,Fe);
la1nl = synthadEnveloppe(fla1,T*0.5,Fe);
si1nl = synthadEnveloppe(fsi1,T*0.5,Fe);

mi1b = synthadEnveloppe(fmi1,T*2,Fe);

do1np = synthadEnveloppe(fdo1,T*1.5,Fe);
re1np = synthadEnveloppe(fre1,T*1.5,Fe);
mi1np = synthadEnveloppe(fmi1,T*1.5,Fe);

do1nll = synthadEnveloppe(fdo1,T*0.25,Fe);
re1nll = synthadEnveloppe(fre1,T*0.25,Fe);
mi1nll = synthadEnveloppe(fmi1,T*0.25,Fe);

sol1dnll = synthadEnveloppe(fsol1d,T*0.25,Fe);
sol1dnl = synthadEnveloppe(fsol1d,T*0.5,Fe);

sol1nll = synthadEnveloppe(fsol1,T*0.25,Fe);
si1nll = synthadEnveloppe(fsi1,T*0.25,Fe);


do1bn = synthadEnveloppe(fdo1b,T,Fe);
do1n = synthadEnveloppe(fdo1,T,Fe);
re1n = synthadEnveloppe(fre1,T,Fe);
mi1n = synthadEnveloppe(fmi1,T,Fe);
fa1n = synthadEnveloppe(ffa1,T,Fe);
sol1n = synthadEnveloppe(fsol1,T,Fe);
la1n = synthadEnveloppe(fla1,T,Fe);
si1n = synthadEnveloppe(fsi1,T,Fe);

%Octave 2

do2bnl = synthadEnveloppe(fdo2b,T*0.5,Fe);
do2nl = synthadEnveloppe(fdo2,T*0.5,Fe);
re2nl = synthadEnveloppe(fre2,T*0.5,Fe);
mi2nl = synthadEnveloppe(fmi2,T*0.5,Fe);
fa2nl = synthadEnveloppe(ffa2,T*0.5,Fe);
sol2nl = synthadEnveloppe(fsol2,T*0.5,Fe);
la2nl = synthadEnveloppe(fla2,T*0.5,Fe);
si2nl = synthadEnveloppe(fsi2,T*0.5,Fe);

re2dnl = synthadEnveloppe(fre2d,T*0.5,Fe);

sol2dnll = synthadEnveloppe(fsol2d,T*0.25,Fe);
sol2dnl = synthadEnveloppe(fsol2d,T*0.5,Fe);


mi2b = synthadEnveloppe(fmi2,T*2,Fe);

do2np = synthadEnveloppe(fdo2,T*1.5,Fe);
re2np = synthadEnveloppe(fre2,T*1.5,Fe);
mi2np = synthadEnveloppe(fmi2,T*1.5,Fe);

do2nll = synthadEnveloppe(fdo2,T*0.25,Fe);
re2nll = synthadEnveloppe(fre2,T*0.25,Fe);
mi2nll = synthadEnveloppe(fmi2,T*0.25,Fe);
sol2nll = synthadEnveloppe(fsol2,T*0.25,Fe);
si2nll = synthadEnveloppe(fsi2,T*0.25,Fe);


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

si3np = synthadEnveloppe(fsi3,T*1.25,Fe);
si3nll = synthadEnveloppe(fsi3,T*0.25,Fe);

re3b = synthadEnveloppe(fre3,T*2,Fe);
do3b = synthadEnveloppe(fdo3,T*2,Fe);
sol3b = synthadEnveloppe(fsol3,T*2,Fe);

do3db = synthadEnveloppe(fdo3d,T*2,Fe);
re3dbr = synthadEnveloppe(fre3d,T*4,Fe);

la3db= synthadEnveloppe(fla3d,T*2,Fe);


re3bnl = synthadEnveloppe(fre3b,T*0.5,Fe);
sol3bnl= synthadEnveloppe(fsol3b,T*0.5,Fe);
la3bnl= synthadEnveloppe(fla3b,T*0.5,Fe);

do3dnl = synthadEnveloppe(fdo3d,T*0.5,Fe);
re3dnl = synthadEnveloppe(fre3d,T*0.5,Fe);
sol3dnl= synthadEnveloppe(fsol3d,T*0.5,Fe);
la3dnl= synthadEnveloppe(fla3d,T*0.5,Fe);

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

la4dn = synthadEnveloppe(fla4d,T*1,Fe);
sol4dn = synthadEnveloppe(fsol4d,T*1,Fe);
re4dn = synthadEnveloppe(fre4d,T*1,Fe);

do4np = synthadEnveloppe(fdo4,T*1.25,Fe);



do4ncp = synthadEnveloppe(fdo4,T*0.75,Fe);
re4dncp = synthadEnveloppe(fre4d,T*0.75,Fe);
re4ncp = synthadEnveloppe(fre4,T*0.75,Fe);
sol4ncp = synthadEnveloppe(fsol4,T*0.75,Fe);
sol4dncp = synthadEnveloppe(fsol4d,T*0.75,Fe);


la4dnl = synthadEnveloppe(fla4d,T*0.5,Fe);
re4dnl = synthadEnveloppe(fre4d,T*0.5,Fe);
sol4dnl = synthadEnveloppe(fsol4d,T*0.5,Fe);

si4nll = synthadEnveloppe(fsi4,T*0.25,Fe);
re4nll = synthadEnveloppe(fre4,T*0.25,Fe);
re4dnll = synthadEnveloppe(fre4d,T*0.25,Fe);
fa4nll = synthadEnveloppe(ffa4,T*0.25,Fe);

do4n = synthadEnveloppe(fdo4,T,Fe);
re4n = synthadEnveloppe(fre4,T,Fe);
mi4n = synthadEnveloppe(fmi4,T,Fe);
fa4n = synthadEnveloppe(ffa4,T,Fe);
sol4n = synthadEnveloppe(fsol4,T,Fe);
la4n = synthadEnveloppe(fla4,T,Fe);
si4n = synthadEnveloppe(fsi4,T,Fe);

% Octave 5

do5nl = synthadEnveloppe(fdo5,T*0.5,Fe);
re5dn = synthadEnveloppe(fre5d,T*1,Fe);
re5dnl = synthadEnveloppe(fre5d,T*0.5,Fe);

la5dn = synthadEnveloppe(fla5d,T*1,Fe);
fa5nl = synthadEnveloppe(ffa5,T*0.5,Fe);

sol5n = synthadEnveloppe(fsol5,T*1,Fe);
sol5nl = synthadEnveloppe(fsol5,T*0.5,Fe);
sol5dn = synthadEnveloppe(fsol5d,T*1,Fe);

% Octave 6

do6nl = synthadEnveloppe(fdo6,T*0.5,Fe);
la6dn = synthadEnveloppe(fla6d,T*1,Fe);
sol6n = synthadEnveloppe(fsol6,T*1,Fe);
sol6dn = synthadEnveloppe(fsol6d,T*1,Fe);
fa6nl = synthadEnveloppe(ffa6,T*0.5,Fe);
re6dnl = synthadEnveloppe(fre6d,T*0.5,Fe);


% MelD = [ %vide, vide,vide,vide ...
%          %vide, vide,vide,vide ...
%          %vide, vide,vide,vide ...
%          %vide, vide,vide,vide ...
%          ...
%          %vide, vide,vide,vide ...
%          vide, vide,vide,vide ...
%          do4nl, sol3nl, do4nl, sol3nl,do4nl, sol3nl, do4nl, sol3nl...
%          la3nl, fa3nl,la3nl, fa3nl, sol3nl,fa3nl,sol3nl, re3nl...
%          ...
%          mi3nl, do3nl, la2nl, do3nl, vide05, do3nl,la2nl,do3nl ...
%          re3b, vide,re3b,vide ...
%          vide,vide ...
%          vide05, do3nl, mi3nl, do3nl, vide05, re3nl,fa3nl,re3nl...
%          ...
%        ];
% 
% 
% MelG = [ %do2bnl, si2nl, sol2nl, si2nl, do2nl, si2nl, sol2nl, si2nl ... 
%          %do2bnl, si2nl, sol2nl, si2nl, do2nl, si2nl, sol2nl, si2nl ...
%          %do2bnl, si2nl, sol2nl, si2nl, do2nl, si2nl, sol2nl, si2nl ...
%          %do2nl, si2nl, sol2nl, si2nl, do2nl, si2nl, mi2nl, si2nl ...
%          ...
%          %re2nl, si2nl, fa2nl, si2nl, re2nl, si2nl, fa2nl, si2nl ...
%          re2nl, si2nl, la2nl, si2nl, re2nl, si2nl, la2nl, si2nl ...
%          do3n, do3n, si2n,si2n...
%          la2n, la2n, sol2n,sol2n...
%          ...         
%          mi2b,vide,mi2b,vide ...
%          re2nl, si2nl, fa2nl, si2nl, re2nl, si2nl, sol2nl,si2nl ...
%          si2nl,vide ...
%          mean(do2np+do1np), do2nll, mean(re2np+re1np), re2nll...
%          ...         
%         ];


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
       re3b, vide... %A la palce du vide un Si3nl a cheval sur les deux temps(hardu)
       vide,vide...
       ...
       mean(cat(1,do2nl,do3nl),1), do2nl, re3dnl, do2nl, mean(cat(1,re2nl,re3nl),1),re2nl, fa3nl, re2nl...
       mean(cat(1,re2dnl,re3dnl),1), re2dnl, sol3nl, re2dnl,  mean(cat(1,si2nl,si3nl),1), si2nl, re3nl, si2nl...
       mean(cat(1,do2nl,do3nl),1), do2nl, re3dnl, do2nl,  mean(cat(1,re2nl,re3nl),1), re2nl, fa2nl, re2nl  ...
       mean(cat(1,re2dnl,re3dnl),1), re2dnl, sol3nl, re2dnl, mean(cat(1,si2nl,si3nl),1), si2nl, re3nl, si2nl ... #0:50
       ...
       mean(cat(1,do2nl,do3nl),1), do2nl, re3dnl,do2nl, mean(cat(1,do2nl,do3nl),1), do2nl, re3dnl, do2nl ...
       mean(cat(1,do2nl,do3nl),1), do2nl, do3nl, do2nl, sol2dnll, sol1dnll, mean(cat(1,sol1dnl,sol2dnl),1),mean(cat(1,sol1dnl,sol2dnl),1),mean(cat(1,sol1dnl,sol2dnl),1)...
       sol2nll, mean(cat(1,sol1nll,sol2nll),1),mean(cat(1,sol1nl,sol2nl),1),mean(cat(1,sol1nl,sol2nl),1),mean(cat(1,sol1nl,sol2nl),1),si2nll, mean(cat(1,si1nll,si2nll),1),mean(cat(1,si1nl,si2nl),1),mean(cat(1,si1nl,si2nl),1),mean(cat(1,si1nl,si2nl),1)...   
       
       
       
       
       
];

MelD(numel(MelG)) = 0;
  
audiowrite('melG.wav',MelG,Fe);
audiowrite('melD.wav',MelD,Fe);

%Mono

 Mel = cat(1,MelG,MelD);
 Mel = mean(Mel,1);
 
 audiowrite('mel.wav',Mel,Fe);

%Stereo
MelG_s = mean(cat(1,0.7*MelG,0.3*MelD),1);
MelD_s = mean(cat(1,0.7*MelD,0.3*MelG),1);
Mel=[MelG_s;MelD_s];
audiowrite('melStereo.wav',Mel.',Fe);