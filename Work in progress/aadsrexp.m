attack = exp(linspace( log(0.001), log(1),0.2*22050));
decay = exp(linspace(log(1),log(0.6), 0.1*22050));
sustain = exp(linspace(log(0.6),log(0.6), 0.4*22050));
release = exp(linspace(log(0.6),log(0.001), 0.3*22050));
adsr2 = [ attack  decay  sustain  release];
