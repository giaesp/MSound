% Funzione: finddup
% -----------------
% Cerca e segnala eventuali ripetizioni all'interno di una partitura.
%
% Prototipo: [pos] = finddup(part)
% Input:
%   - part: partitura da controllare
% Output:
%   - pos: posizioni (sec.) in cui ci sono ripetizioni nella partitura
%   - stampa a video le posizioni
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



function finddup(part);

[row,col] = size(part);
for i = 1 : row-1
   time1 = part{i,1};
   time2 = part{i+1,1};
   if (time1 == time2)
      fprintf(' Duplicate at: %d sec.\n', time1);
   end
end
