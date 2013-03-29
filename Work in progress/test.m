sample_rate = 44100; % Sampling rate (Hz)
nchnls = 1;				% Numero canali (1 = Mono, 2 = Stereo)

% Definizione della partitura
partiture = {
   %Ctime 	Atime	  	Glis/freq.	ArmonicAMP
   0,			9, 		[220 220 1 220 440 3 440 440 1 440 220 3 220 220 1],			0.5 ;
};

snd = gen10(partiture,sample_rate);
