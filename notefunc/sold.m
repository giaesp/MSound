% Funzione: sold(octave)
% --------------------
% Genera il SOL# all'ottava desiderata.
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



function note = sold(octave)

switch(octave)
case 0 
   note = 51.9131;
case 1 
   note = 103.8262;
case 2 
   note = 207.6523;
case 3
   note = 415.3047;
case 4
   note = 830.6094;
case 5
   note = 1661.2188;
case 6 
   note = 3322.4376;
case 7
   note = 6644.8752;   
otherwise
   fprintf(' SOL# error: unknown octave\n');
   return
end