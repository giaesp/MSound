srate = 44100;
t = linspace(0,0.5,0.5*srate);
fc = 1000;
fm = 10;
index = 1;

snd = sin(2 * pi * fc * t + index * sin(2 * pi * fm *t));
drawfft(snd,srate);