% Funzione: la(octave)
% --------------------
% Genera il LA all'ottava desiderata.
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



function note = la(octave)

switch(octave)
case 0 
   note = 55.0000;
case 1 
   note = 110.0000;
case 2 
   note = 220.0000;
case 3
   note = 440.0000;
case 4
   note = 880.0000;
case 5
   note = 1760.0000;
case 6 
   note = 3520.0000;
case 7
   note = 7040.0000;   
otherwise
   fprintf(' LA error: unknown octave\n');
   return
end