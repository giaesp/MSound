user = input('(R)e-sound or (B)ack to the shell? ', 'c');
 if (strcmp(user,'R') | strcmp(user,'r'))
    fprintf(' Resounding...\n');
    %    sound(snd, sample_rate);
 end
 if (strcmp(user,'B') | strcmp(user,'b'))
    return
 else 
    user = input('(R) or (B), please? \n', 'c');
 end
 