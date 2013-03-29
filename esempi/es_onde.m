srate = 22050;
t = linspace(0,0.2,0.2*srate);
freq = 110;
snd1 = sin(2*pi*freq*t);
snd2 = sawtooth(2*pi*freq*t);
snd3 = square(2*pi*freq*t);

subplot(3,1,1);
plot(snd1);
axis([0 length(snd1) -1.2 1.2]);
title('Forma d'' onda sinusoidale');

subplot(3,1,2);
plot(snd2);
axis([0 length(snd1) -1.2 1.2]);
title('Forma d'' onda a dente di sega');

subplot(3,1,3);
plot(snd3);
axis([0 length(snd1) -1.2 1.2]);
title('Forma d'' onda quadra');
