% Funzione: do(octave)
% --------------------
% Genera il DO all'ottava desiderata.
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



function note = do(octave)

switch(octave)
case 0 
   note = 32.7032;
case 1 
   note = 65.4064;
case 2 
   note = 130.8128;
case 3
   note = 261.6256;
case 4
   note = 523.2511;
case 5
   note = 1046.5023;
case 6 
   note = 2093.0045;
case 7
   note = 4186.0090;   
otherwise
   fprintf(' DO error: unknown octave\n');
   return
end
