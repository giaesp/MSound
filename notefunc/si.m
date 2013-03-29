% Funzione: si(octave)
% --------------------
% Genera il SI all'ottava desiderata.
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



function note = si(octave)

switch(octave)
case 0 
   note = 61.7354;
case 1 
   note = 123.4708;
case 2 
   note = 246.9471;
case 3
   note = 493.8833;
case 4
   note = 987.7666;
case 5
   note = 1975.5332;
case 6 
   note = 3951.0664;
case 7
   note = 7902.1328;   
otherwise
   fprintf(' SI error: unknown octave\n');
   return
end