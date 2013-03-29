% Funzione: linenv
% ----------------
% Realizzazione dell'inviluppo su segmenti di retta.
%
% Prototipo: [seg] = linenv(parameters,srate)
% Input:
%   - parameters: vettore dei parametri di lunghezza almeno pari a 3, o suoi multipli,
%                 laddove ciascuna tripla rappresenta:
%                 [ampiezza_iniziale ampiezza_finale durata_in_secondi]
%   - srate: frequenza di campionamento in Hertz
% Output:
%   - seg: vettore dell'inviluppo di ampiezza
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



function [seg] = linenv(parameters,srate);

% Routine di controllo dei parametri di input
if (mod(length(parameters),3) ~= 0)
   fprintf(' linenv error: incompatible parameters vector length\n');
   return
end

global_duration = 0;
for k = 1 : 3 : length(parameters)
   beg_val = parameters(k);
   end_val   = parameters(k + 1);
   duration  = parameters(k + 2);
   global_duration = global_duration + duration;
   if (k == 1)
      seg = linspace(beg_val, end_val, duration * srate);
   else
      seg = [ seg linspace(beg_val, end_val, duration * srate) ];
   end
end   
         
      


      

