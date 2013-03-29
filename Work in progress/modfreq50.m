% Esempio di modulazione di frequenza con:
% - frequenza portante (fc) = 1000 Hz
% - frequenza modulante (fm) = 50 Hz
% - indice di modulazione (index) = 10

srate = 44100;
fc = 1000;
fm = 50;
t = linspace(0,1,1*srate);
index = 10;
snd = sin ( 2 * pi * fc * t + index * sin ( 2 * pi * fm * t ) );
drawfft(snd,srate);
sound(snd,srate);
