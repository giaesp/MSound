sample_rate = 44100;
partiture = [ 	0 	2 	261.625 	0 0.1 ; % DO
   				2 	2 	329.627 	0 0.1 ; % MI
               4  2	391.995  0 0.1 ; % SOL
               6  2  523.25   0 0.1 ; % DO all'ottava sopra
            ];
            
[snd_part,snd] = gen10(partiture,44100);
wavwrite(snd,sample_rate,'esempio01.wav');
            
      