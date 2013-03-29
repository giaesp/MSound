% Funzione: lingliss
% ------------------
% Realizzazione del glissando su segmenti di retta.
%
% Prototipo: [seg] = lingliss(parameters,srate)
% Input:
%   - parameters: vettore dei parametri di lunghezza almeno pari a 3, o suoi multipli,
%                 laddove ciascuna tripla rappresenta:
%                 [frequenza_iniziale frequenza_finale durata_in_secondi]
%   - srate: frequenza di campionamento in Hertz
% Output:
%   - seg: vettore del glissando 
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



function [seg] = lingliss(parameters,srate);

% Routine di controllo dei parametri di input
if (mod(length(parameters),3) ~= 0)
   fprintf(' lingliss error: incompatible parameters vector length\n');
   return
end

global_duration = 0;
for k = 1 : 3 : length(parameters)
   beg_val = parameters(k);
   end_val   = parameters(k + 1);
   end_freq  = (end_val + beg_val) / 2;
   duration  = parameters(k + 2);
   global_duration = global_duration + duration;
   if (k == 1)
      seg = linspace(beg_val, end_freq, duration * srate);
   else
      seg = [ seg linspace(beg_val, end_freq, duration * srate) ];
   end
end   
         
      


      

