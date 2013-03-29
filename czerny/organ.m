% Funzione: organ
% ---------------
% Implementazione di uno strumento mediante modulazione di frequenza.
% La struttura degli oscillatori è tratta dallo strumento num. 13 - Pipe Organ 2
% di "FM7" (Native Instruments).
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



function [snd] = organ(note,sec,srate)

% Qualora non venga specificato alcun sample rate nella chiamata a funzione, 
% di default viene assegnato un sample rate di 44100 allo strumento.
if nargin == 2
   srate = 44100;
end

% Creazione del vettore tempo
t = linspace(0, sec, sec * srate);

% Creazione degli inviluppi di ampiezza relativi a ciascun oscillatore
env_a = [ linspace(1.0, 0.84, srate * 0.4 * sec) linspace(0.84, 0.0, srate * 0.6 * sec) ];
env_b = [ linspace(0.0, 1, srate * 0.2 * sec) linspace(1, 0.84, srate * 0.4 * sec) linspace(0.84, 0.0, srate * 0.4 *sec) ];
env_c = env_a;
env_d = env_b;
env_e = env_a;
env_f = env_b;

% Creazione della modulazione di feedback, del segnale modulante e del portante modulato
% Oscillatori A-B
feed_a = env_a .* sin(2 * pi * (note/4) * t);
mod_a =  env_a .* sin(2 * pi * (note/4) * t + 0.50 * feed_a);
car_b =  0.57 * env_b .* sin(2 * pi * (note + 0.19) * t + 0.74 * mod_a);

% Creazione della modulazione di feedback, del segnale modulante e del portante modulato
% Oscillatori C-D
feed_c = env_c .* sin(2 * pi * ((note/2) - 0.20) * t);
mod_c =  env_c .* sin(2 * pi * ((note/2) - 0.20) * t + 0.50 * feed_c);
car_d =  0.75 * env_d .* sin(2 * pi * (note + 0.17) * t + 0.71 * mod_c);

% Creazione della modulazione di feedback, del segnale modulante e del portante modulato
% Oscillatori E-F
feed_e = env_e .* sin(2 * pi * (note + 0.20) * t);
mod_e =  env_e .* sin(2 * pi * (note + 0.20) * t + 0.50 * feed_e);
car_f =  0.75 * env_f .* sin(2 * pi * (note + 0.15) * t + 0.84 * mod_e);

% Creazione del segnale acustico
snd = car_b + car_d + car_f;