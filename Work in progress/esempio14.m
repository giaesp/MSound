sample_rate = 44100;
control_rate = 4410;
t = linspace (0,5, 5*sample_rate);
glissando = linspace (220, 330, 5*sample_rate);
 snd2 = sin (2 * pi * glissando .* t );
 snd1 = sin (2 * pi * 220 .* t);
 snd3 = sin (2 * pi * 440 .* t);
glissando2= linspace (440, 330, 5*sample_rate);
 snd4 = sin (2 * pi * glissando2 .* t);
snd = [snd1  snd2  snd3 snd4  snd1];
 