% Funzione: fad(octave)
% --------------------
% Genera il FA# all'ottava desiderata.
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



function note = fad(octave)

switch(octave)
case 0 
   note = 46.2493;
case 1 
   note = 92.4986;
case 2 
   note = 184.9972;
case 3
   note = 369.9944;
case 4
   note = 739.9888;
case 5
   note = 1479.9777;
case 6 
   note = 2959.9554;
case 7
   note = 5919.9108;   
otherwise
   fprintf(' FA# error: unknown octave\n');
   return
end