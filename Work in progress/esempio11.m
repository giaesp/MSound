srate = 44100;
t = linspace(0,6,6*srate);


icamp = 0.8;	% Ampiezza I portante
icfrq = 100;	% Freq. I portante
imfrq = 100;	% Freq. modulante

indx = 5;		% Indice mod. massimo

icamp2 = 0.8;
icfrq2 = 200;

icamp3 = 0.6;
icfrq3 = 300;

envcar  = [ linspace(0,icamp,3*srate)  linspace(icamp,0,3*srate)  ];
envcar2 = [ linspace(0,icamp2,3*srate) linspace(icamp2,0,3*srate) ];
envcar3 = [ linspace(0,icamp3,3*srate) linspace(icamp3,0,3*srate) ];

car1 = foscili(envcar,1,icfrq,imfrq,indx,t);
car2 = foscili(envcar,1,icfrq,imfrq,indx,t);
car3 = foscili(envcar,1,icfrq3,imfrq,indx,t);

snd = car1 + car2 + car3;
snd = normsound(snd,100);




