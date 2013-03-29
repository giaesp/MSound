sample_rate = 44100; % Sampling rate (Hz)
nchnls = 2;				% Numero canali (1 = Mono, 2 = Stereo)

% Definizione della partitura
partiture = {
   %Ctime 	Atime	  	Chnl	Glis/freq.				ArmonicAMP
   0,       3,			0,		[440 220 3],         0.5 ;
   1,			3, 		1,		[330 550 3],			0.5 ;
   2,       3,       0,    [110 220 3],         0.5 ;
   3,       3,       1,    [50  400 3],         0.5 ;
};

snd = composestereo(partiture,sample_rate);
