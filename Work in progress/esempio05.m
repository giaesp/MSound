sample_rate = 44100;
partiture = [ 	0 	4	2	2 	261.625 	261.625 0.9 ; % DO
   				2 	4 	2	2	329.627 	329.627 0.9 ; % MI
               4 	4	2	2 	391.995  391.995 0.9 ; % SOL
               6  4 	2	2  523.25   523.25  0.9 ; % DO all'ottava sopra
            ];
            
[snd_part,snd] = gen10(partiture,44100);
wavwrite(snd,sample_rate,'esempio05.wav');
            
      