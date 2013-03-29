% Funzione: red(octave)
% --------------------
% Genera il RE# all'ottava desiderata.
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



function note = red(octave)

switch(octave)
case 0 
   note = 38.8909;
case 1 
   note = 77.7817;
case 2 
   note = 155.5635;
case 3
   note = 311.1270;
case 4
   note = 622.2540;
case 5
   note = 1244.5079;
case 6 
   note = 2489.0159;
case 7
   note = 4978.0317;   
otherwise
   fprintf(' RE# error: unknown octave\n');
   return
end