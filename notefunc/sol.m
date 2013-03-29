% Funzione: sol(octave)
% --------------------
% Genera il SOL all'ottava desiderata.
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



function note = sol(octave)

switch(octave)
case 0 
   note = 48.9994;
case 1 
   note = 97.9989;
case 2 
   note = 195.9977;
case 3
   note = 391.9954;
case 4
   note = 783.9909;
case 5
   note = 1567.9817;
case 6 
   note = 3135.9635;
case 7
   note = 6271.9270;   
otherwise
   fprintf(' SOL error: unknown octave\n');
   return
end