attack = linspace( 0,1, 0.2*22050);
decay = linspace(1,0.6, 0.1*22050);
sustain = linspace(0.6,0.6, 0.4*22050);
release = linspace(0.6,0, 0.3*22050);
adsr = [ attack  decay  sustain  release];

attack = exp(linspace( log(0.001), log(1),0.2*22050));
decay = exp(linspace(log(1),log(0.6), 0.1*22050));
sustain = exp(linspace(log(0.6),log(0.6), 0.4*22050));
release = exp(linspace(log(0.6),log(0.001), 0.3*22050));
adsr2 = [ attack  decay  sustain  release];

subplot(2,1,1)
plot(adsr)
grid on
title('Inviluppo ADSR lineare');

subplot(2,1,2)
plot(adsr2)
grid on
title('Inviluppo ADSR esponenziale');