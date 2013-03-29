% CTSCALE	Frequenze della scala cromatica temperata
% 
% CTSCALE(note,octave) restituisce il valore in frequenza 
% nella scala cromatica temperata, relativo alla nota 'note' 
% ed all'ottava 'octave'.
%		
% N.B: Il passaggio di parametri a questa funzione è case-sensitive.
% Esempio: per conoscere la frequenza del DO# alla quarta ottava è
% necessario richiamare la funzione nel modo seguente:
%
% frequenza = ctscale('DO#',4);
%
% Inoltre, sono incluse solo le note in diesis (#). 
% Esempio: per conoscere la frequenza del MIb è necessario richiamare
% la funzione, chiedendole la frequenza del RE#:
%
% frequenza = ctscale('RE#',4);
%
% -------------------------
% MSound - The Matlab Sound				
% 
% Matematica Applicata (Teoria dei Suoni)
% Docente: Vittorio Cafagna
% 
% Università degli Studi di Salerno
% C.d.L. Informatica 
% Anno Accademico 2002/2003
%




function [freq] = ctscale(note,octave);

% Frequenze della scala cromatica temperata
% Octave	0	      1			 2			  3			4			 5			   6			  7			   % Note
% --------------------------------------------------------------------------------------- |  % -----
cts = [	32.7032  65.4064   130.8128  261.6256  523.2511  1046.5023	2093.0045  4186.0090 ;  % DO
			34.6478  69.2957   138.5913  277.1826  554.3653  1108.7305	2217.4610  4434.9221 ;  % DO#
   	   36.7081  73.4162   146.8324  293.6648  587.3295  1174.6591	2349.3181  4698.6363 ;  % RE
		   38.8909  77.7817   155.5635  311.1270  622.2540  1244.5079	2489.0159  4978.0317 ;  % RE#
		   41.2034  82.4069   164.8138  329.6276  659.2551	 1318.5102	2637.0205  5274.0409 ;  % MI
		   43.6535  87.3071   174.6141  349.2282  698.4565  1396.9129	2793.8259  5587.6517 ;  % FA
		   46.2493  92.4986   184.9972  369.9944  739.9888  1479.9777	2959.9554  5919.9108 ;  % FA#
		   48.9994  97.9989   195.9977  391.9954  783.9909  1567.9817	3135.9635  6271.9270 ;  % SOL
         51.9131  103.8262  207.6523  415.3047  830.6094  1661.2188	3322.4376  6644.8752 ;  % SOL#
         55.0000  110.0000  220.0000  440.0000  880.0000  1760.0000	3520.0000  7040.0000 ;  % LA
         58.2705  116.5409  233.0819  466.1638  932.3275  1864.6550	3729.3101  7458.6202 ;  % LA#
       	61.7354  123.4708  246.9417  493.8833  987.7666  1975.5332	3951.0664  7902.1328 ]; % SI
            
if (octave < 0 | octave > 7)
   fprintf(' ctscale error: invalid octave\n');
   return
end

if (strcmp(note,'DO') == 1)
   note_ = 1;
elseif (strcmp(note,'DO#') == 1)
   note_ = 2;
elseif (strcmp(note,'RE') == 1)
   note_ = 3;
elseif (strcmp(note,'RE#') == 1)
   note_ = 4;
elseif (strcmp(note,'MI') == 1)
   note_ = 5;
elseif (strcmp(note,'FA') == 1)
   note_ = 6;
elseif (strcmp(note,'FA#') == 1);
   note_ = 7;
elseif (strcmp(note,'SOL') == 1);
   note_ = 8;
elseif (strcmp(note,'SOL#') == 1);
   note_ = 9;
elseif (strcmp(note,'LA') == 1);
   note_ = 10;
elseif (strcmp(note,'LA#') == 1);
   note_ = 11;
elseif (strcmp(note, 'SI') == 1)
   note_ = 12;
else
   fprintf(' ctscale error: invalid note or unmatched case\n');
   return
end

freq = cts(note_, octave + 1);



   


            