% Funzione: oscil
% ---------------
% Implementazione di un oscillatore sinusoidale.
%
% Prototipo: [snd] = oscil(amp, freq, time, srate)
% Input:
%   - amp: ampiezza del segnale (valori compresi nel range [-1,+1])
%   - freq: frequenza del segnale (Hz)
%   - t: vettore tempo
% Output:
%   - snd: segnale generato dall'oscillatore. 
%          Usa la funzione 'sound' o 'soundsc' per ascoltare il suono generato.
%
% N.B.:
% La funzione oscil può prendere come argomento sia un glissando (parametro freq) che
% un inviluppo di ampiezza (parametro amp), a patto che i vettori relativi al glissando
% e/o all'inviluppo di ampiezza abbiano la stessa dimensione del suono stesso.
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



function [snd] = oscil(amp, freq, t);

snd = amp .* sin(2 * pi * freq .* t);