% Funzione: fa(octave)
% --------------------
% Genera il FA all'ottava desiderata.
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



function note = fa(octave)

switch(octave)
case 0 
   note = 43.6535;
case 1 
   note = 87.3071;
case 2 
   note = 174.6141;
case 3
   note = 349.2282;
case 4
   note = 698.4565;
case 5
   note = 1396.9129;
case 6 
   note = 2793.8259;
case 7
   note = 5587.6517;   
otherwise
   fprintf(' FA error: unknown octave\n');
   return
end