% FM con portanti multiple

srate = 44100;
t = linspace(0,5,5*srate);

deviation = 10;
mod_freq = 220;

fprintf(' Building modulator...\n');
modulator = oscil(deviation, mod_freq, t);

amp1 = 0.5;
freq1 = 110;
fprintf(' Modulating 1st carrier...\n');
carrier1 = oscil(amp1, freq1 + modulator, t);

amp2 = 0.5;
freq2 = 330;
fprintf(' Modulating 2nd carrier...\n');
carrier2 = oscil(amp2, freq2 + modulator, t);

amp3 = 0.5;
freq3 = 440;
fprintf(' Modulating 3rd carrier...\n');
carrier3 = oscil(amp3, freq3 + modulator, t);

fprintf(' Building sound...\n');
snd = carrier1 + carrier2 + carrier3;

snd = normalize(snd,50);
sound(snd,srate);
fprintf(' Writing to wave file...\n');
wavwrite(snd,srate,16,'mul_car1.wav');
