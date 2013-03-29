srate = 44100;
t = linspace( 0, 10, 10*srate);

% primo oscillatore modulante
mod_freq = 100; 
indmax = 0.8;
indatk = 2;
indperc = 0.8;
indrel = 1;

% primo inviluppo di indice di modulazione
indenv_1 = exp(linspace(log(0.001),log(indmax),indatk*srate));
indenv_2 = exp(linspace(log(indmax),log(indmax*indperc),(10 - indatk - indrel)*srate));
indenv_3 = exp(linspace(log(indmax*indperc),log(0.001),indrel*srate));
indenv = [ indenv_1 indenv_2 indenv_3 ];

% secondo oscillatore modulante
mod_freq2 = 125;
indmax2 = 1;
indatk2 = 2;
indperc2 = 0.6;
indrel2 = 2;

% secondo inviluppo di indice di modulazione
indenv2_1 = exp(linspace(log(0.001),log(indmax2),indatk2*srate));
indenv2_2 = exp(linspace(log(indmax2),log(indmax2*indperc2),(10 - indatk2 - indrel2)*srate));
indenv2_3 = exp(linspace(log(indmax2*indperc2),log(0.001),indrel2*srate));
indenv2 = [ indenv2_1 indenv2_2 indenv2_3 ];

% oscillatore portante
amp = 1;
carr_freq = 200;
atk = 0.1;
perc = 0.9;
rel = 3;

% inviluppo di ampiezza oscillatore portante
envc_1 = exp(linspace(log(0.001),log(amp),atk*srate));
envc_2 = exp(linspace(log(amp),log(amp*perc),(10 - atk - rel)*srate));
envc_3 = exp(linspace(log(amp*perc),log(0.001),rel*srate));
envc = [envc_1 envc_2 envc_3 ];

mod1 = oscil((indenv*mod_freq/100), mod_freq, t);
mod2 = oscil((indenv2*mod_freq2/100), mod_freq2, t);
car = oscil(envc, carr_freq + mod1 + mod2,t);
car = normalize(car,50);
sound(car,srate);
