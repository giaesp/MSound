% Funzione: mi(octave)
% --------------------
% Genera il MI all'ottava desiderata.
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



function note = mi(octave)

switch(octave)
case 0 
   note = 41.2034;
case 1 
   note = 82.4069;
case 2 
   note = 164.8138;
case 3
   note = 329.6276;
case 4
   note = 659.2551;
case 5
   note = 1318.5102;
case 6 
   note = 2637.0205;
case 7
   note = 5274.0409;   
otherwise
   fprintf(' MI error: unknown octave\n');
   return
end