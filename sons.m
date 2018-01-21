Fe = 8000;
T = 60/600;
dt = 1/Fe;
t = 0:dt:T;
f0 = 329.628;
f = 349.228;
f2= 391.995;
f3= 440;
f4= 493.883;
f5= 523.551;
f6= 587.33;
f7= 659.255;
f8= 698.456;
f9= 783.991;
f10 = 880;

E = 1;


Mi3 = E*sin(2*pi*f0*t);
Fa3 = E*sin(2*pi*f*t) ;
Sol3 = E*sin(2*pi*f2*t);
La3 = E*sin(2*pi*f3*t);
Si3 = E*sin(2*pi*f4*t);
Do4 =  E*sin(2*pi*f5*t);
Re4 = E*sin(2*pi*f6*t);
Mi4 =  E*sin(2*pi*f7*t);
Fa4 = E*sin(2*pi*f8*t);
Sol4 = E*sin(2*pi*f9*t);
La4 = E*sin(2*pi*f10*t);

Vide = 0; 

FMi3 = [f0, 2*f0,3*f0,4*f0,5*f0];
FFa3 = [f , 2*f , 3*f, 4*f,5*f];
FSol3 = [f2 , 2*f2 , 3*f2 , 4*f2 , 5*f2] ;
FLa3 = [f3 , 2*f3 , 3*f3 , 4*f3 , 5*f3] ;
FSi3 = [f4 , 2*f4 , 3*f4 , 4*f4 , 5*f4] ;
FDo4 = [f5 , 2*f5 , 3*f5 , 4*f5 , 5*f5] ;
FRe4 = [f6 , 2*f6 , 3*f6 , 4*f6 , 5*f6] ;
FMi4 = [f7 , 2*f7 , 3*f7 , 4*f7 , 5*f7] ;
FFa4 = [f8 , 2*f8 , 3*f8 , 4*f8 , 5*f8] ;
FSol4 = [f9 , 2*f9 , 3*f9 , 4*f9 , 5*f9];
FLa4 = [f10, 2*f10, 3*f10, 4*f10, 5*f10];
FVide = f;



A = [100 , 40 , 30 , 20 , 10] ;
% Mi3h = synthad(A,FMi3,T,Fe);
% Fa3h = synthad(A,FFa3,T,Fe) ;
% Sol3h = synthad(A,FSol3,T,Fe) ;
% La3h = synthad(A,FLa3,T,Fe) ;
% Si3h = synthad(A,FSi3,T,Fe) ;
% Do4h = synthad(A,FDo4,T,Fe) ;
% Re4h = synthad(A,FRe4,T,Fe) ;
% Mi4h = synthad(A,FMi4,T,Fe) ;
% Fa4h = synthad(A,FFa4,T,Fe) ;
% Sol4h = synthad(A,FSol4,T,Fe);
% Videh = synthad(0,FVide,T,Fe);
% Sol3b = synthad(A,FSol3,2*T,Fe);
% Re4b = synthad(A,FRe4,2*T,Fe);
% Fa4b = synthad(A,FFa4,2*T,Fe);
% La4h = synthad(A,FLa4,T,Fe);

Mi3h = synthadEnveloppe(A,FMi3,T,Fe);
Fa3h = synthadEnveloppe(A,FFa3,T,Fe) ;
Sol3h = synthadEnveloppe(A,FSol3,T,Fe) ;
La3h = synthadEnveloppe(A,FLa3,T,Fe) ;
Si3h = synthadEnveloppe(A,FSi3,T,Fe) ;
Do4h = synthadEnveloppe(A,FDo4,T,Fe) ;
Re4h = synthadEnveloppe(A,FRe4,T,Fe) ;
Mi4h = synthadEnveloppe(A,FMi4,T,Fe) ;
Fa4h = synthadEnveloppe(A,FFa4,T,Fe) ;
Sol4h = synthadEnveloppe(A,FSol4,T,Fe);
Videh = synthadEnveloppe(0,FVide,T,Fe);
Sol3b = synthadEnveloppe(A,FSol3,2*T,Fe);
Re4b = synthadEnveloppe(A,FRe4,2*T,Fe);
Fa4b = synthadEnveloppe(A,FFa4,2*T,Fe);
La4h = synthadEnveloppe(A,FLa4,T,Fe);


Mel2 = [Mi4h,Mi4h,Videh,Mi4h ...
        Videh,Do4h,Mi4h,Videh ...
        Sol4h,Videh,Videh,Videh ...
        Sol3h,Videh,Videh,Videh ...
        Do4h,Videh,Videh,Sol3h ...
        Videh,Videh,Mi3h,Videh ...
        Videh,La3h,Videh,Si3h ...
        Videh,Si3h,La3h,Videh ...       
        ];
