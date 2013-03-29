% FM con portanti multiple

srate = 44100;
t = linspace(0, 6, 6 * srate);
silence = zeros(1, 1*srate); % Crea un secondo di silenzio

% Definizione degli inviluppi d'ampiezza
kenvcar = [ linspace(0, 1, 3 * srate) linspace(1, 0, 3 * srate) ];
kenvcar2 = kenvcar;
kenvcar3 = kenvcar;

kenvindx = [ linspace(0, 5, 3 * srate) linspace(5, 0, 3 * srate) ];

fprintf(' Building 1st sound...\n');
snd1_1 = foscili(kenvcar, 1, 100, 100, kenvindx, t);
snd1_2 = foscili(kenvcar2, 1, 200, 100, kenvindx, t);
snd1_3 = foscili(kenvcar3, 1, 300, 100, kenvindx, t);
snd1 = snd1_1 + snd1_2 + snd1_3;

fprintf(' Building 2nd sound...\n');
snd2_1 = foscili(kenvcar, 1, 100, 113, kenvindx, t);
snd2_2 = foscili(kenvcar2, 1, 258, 113, kenvindx, t);
snd2_3 = foscili(kenvcar3, 1, 356, 113, kenvindx, t);
snd2 = snd2_1 + snd2_2 + snd2_3;

fprintf(' Building 3rd sound...\n');
snd3_1 = foscili(kenvcar, 1, 100, 107, kenvindx, t);
snd3_2 = foscili(kenvcar2, 1, 111, 107, kenvindx, t);
snd3_3 = foscili(kenvcar3, 1, 117, 107, kenvindx, t);
snd3 = snd3_1 + snd3_2 + snd3_3;

snd = [ snd1 silence snd2 silence snd3 ];
snd = normalize(snd,50);
sound(snd,srate);
fprintf(' Writing to wave file...\n');
wavwrite(snd,srate,16,'mul_car2.wav');


   