% Funzione: normalize
% -------------------
% Normalizza un suono al livello di ampiezza desiderato.
%
% Prototipo: [normsnd] = normalize(snd, percentage)
% Input:
%   - snd: il suono (vettore) da normalizzare
%   - percentage: livello percentuale di ampiezza da sottrarre/aggiungere al suono di input
% Output:
%   - normsnd: suono normalizzato al livello desiderato.
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




function [normsnd] = normalize(snd,percentage);

weigth = percentage / 100;
fprintf(' Finding peak...');
peak = findpeak(snd);
fprintf('%d\n',peak);
fprintf(' Normalizing sound...\n');
normsnd = snd * (weigth / peak);
