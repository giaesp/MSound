sample_rate = 44100;
partiture = [ 	0 	6 	261.625  0  0.1 ; % DO
   				1 	5 	329.627  0  0.1 ; % MI
               2  4	391.995  0  0.1 ; % SOL
               3  3  523.25   0  0.1 ; % DO all'ottava sopra
            ];
            
[snd_part,snd] = gen10(partiture,44100);
wavwrite(snd,sample_rate,'esempio02.wav');
            
      