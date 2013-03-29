% Funzione: findpeak
% ------------------
% Cerca il picco di ampiezza in un segnale
%
% Prototipo: [peak] = findpeak(snd)
% Input:
%   - snd: suono (vettore) in cui cercare il picco di ampiezza.
% Output:
%   - peak: picco di ampiezza.
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



function [peak] = findpeak(snd);

peak = 0;
for i = 1 : length(snd)
   if (abs(snd(i)) > peak)
      peak = abs(snd(i));
   end
end

   
   