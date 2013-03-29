srate = 44100;
t = time(6,srate);

icamp = 0.8;	% Ampiezza I portante
icfrq = 100;	% Freq. I portante
imfrq = 107;	% Freq. modulante

indx = 5;		% Indice mod. massimo

icamp2 = 0.8;
icfrq2 = 111;

icamp3 = 0.6;
icfrq3 = 117;

envcar  = linseg([0 icamp  3 icamp  0 3],srate);
envcar2 = linseg([0 icamp2 3 icamp2 0 3],srate);
envcar3 = linseg([0 icamp3 3 icamp3 0 3],srate);

car1 = foscili(envcar,1,icfrq,imfrq,indx,t);
car2 = foscili(envcar,1,icfrq,imfrq,indx,t);
car3 = foscili(envcar,1,icfrq3,imfrq,indx,t);

snd = car1 + car2 + car3;
snd = normalize(snd,100);




