% Funzione: foscil
% ----------------
% Implementazione di una coppia di oscillatori che realizzano una FM semplice.
% 
% Prototipo: [snd] = foscili(amp, cps, car, mod, indx, t)
% Input:
%   - amp: ampiezza
%   - cps: frequenza nominale
%   - car: fattore per il quale si moltiplica la frequenza nominale
%          per ottenere la frequenza della portante
%   - mod: fattore per il quale si moltiplica la frequenza nominale
%          per ottenere la frequenza della modulante
%   - indx: indice di modulazione
%   - t: vettore tempo
% Output:
%   - snd: suono generato
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



function [snd] = foscil(amp, cps, car, mod, indx, t);

snd = amp .* sin(2 * pi * (cps * car) .* t + indx .* sin(2 * pi * (cps * mod) .* t));
