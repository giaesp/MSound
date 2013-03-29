% Funzione: re(octave)
% --------------------
% Genera il RE all'ottava desiderata.
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



function note = re(octave)

switch(octave)
case 0 
   note = 36.7081;
case 1 
   note = 73.4162;
case 2 
   note = 146.8324;
case 3
   note = 293.6648;
case 4
   note = 587.3295;
case 5
   note = 1174.6591;
case 6 
   note = 2349.3181;
case 7
   note = 4698.6363;   
otherwise
   fprintf(' RE error: unknown octave\n');
   return
end