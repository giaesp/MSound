srate = 99;										% Frequenza di campionamento
t = linspace(0,1,1*srate);					% Vettore tempo
x = sin(2*pi*15*t) + sin(2*pi*40*t);	% Segnale

y = fft(x);										
m = abs(y);										% Ampiezza
p = unwrap(angle(y));						% Fase

f = (0:length(y)-1) * srate / length(y);	% Vettore delle frequenze
subplot(1,2,1);
plot(f,m);
set(gca,'XTick',[15 40 60 85]);
grid on;

subplot(1,2,2);
plot(f,p*180/pi);
set(gca,'XTick',[15 40 60 85]);
grid on;

