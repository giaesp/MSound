% Funzione: lad(octave)
% --------------------
% Genera il LA# all'ottava desiderata.
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



function note = lad(octave)

switch(octave)
case 0 
   note = 58.2705;
case 1 
   note = 116.5409;
case 2 
   note = 233.0819;
case 3
   note = 466.1638;
case 4
   note = 932.3275;
case 5
   note = 1864.6550;
case 6 
   note = 3729.3101;
case 7
   note = 7458.6202;   
otherwise
   fprintf(' LA# error: unknown octave\n');
   return
end