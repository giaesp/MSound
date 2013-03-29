% Funzione: time
% --------------
% Crea un vettore tempo.
%
% Prototipo: [vettore_tempo] = time(durata, sample_rate)
% Input:
%   - durata: specifica la dimensione del vettore tempo in secondi
%   - sample_rate: specifica la frequenza di campionamento in Hertz
% Output:
%   - vettore_tempo: il vettore tempo che verrà utilizzato nella creazione dei
%                    suoni.
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



function [timevec] = time(duration, srate);

timevec = linspace(0, duration, duration * srate);

