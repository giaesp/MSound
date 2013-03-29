sample_rate = 44100;
values = [ 0  2  0 0 220 220 	0.5  ;
           2  2  0 0 220 440 	0.5  ;  
           4  2  0 0 440 440 	0.5  ; 
           6  2  0 0 440 220 	0.5  ;
           8  2  0 0 220 220 	0.5 ];
            
[out,snd] = gen10(values,sample_rate);
wavwrite(snd,sample_rate,'esempio03.wav');        