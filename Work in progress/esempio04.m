sample_rate = 44100;
partiture = [ 	0 	4	2	2 	261.625 	261.625 1 ; % DO
   				4 	4 	2	2	329.627 	329.627 1 ; % MI
               8 	4	2	2 	391.995  391.995 1 ; % SOL
               12 4 	2	2  523.25   523.25  1 ; % DO all'ottava sopra
            ];
            
[snd_part,snd] = gen10(partiture,44100);
wavwrite(snd,sample_rate,'esempio04.wav');
            
      