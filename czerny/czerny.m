% File: czerny.m
% --------------
% Script per la "compilazione" delle partiture e dello strumento predefiniti.
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



srate = 22050;	% Il sample rate di default è pari a 22050. Per cambiarlo, modificare il valore

czerny_left;	% Chiamata alla partitura relativa alla mano sinistra/accompagnamento
czerny_right;	% Chiamata alla partitura relativa alla mano destra

snd1 = compose(left_hand,srate);	% "Compilazione" della prima partitura (mano sinistra/accompagnamento)
snd2 = compose(right_hand,srate);	% "Compilazione" della seconda partitura

% Routine di padding
if (length(snd1) < length(snd2))
   snd1 = [ snd1 ; zeros(1,length(snd2)-length(snd1))' ];
elseif (length(snd1) > length(snd2))
   snd2 = [ snd2 ; zeros(1,length(snd1)-length(snd2))'];
end

snd = snd1 + snd2;	% Combinazione dei due segnali generati

snd = normalize(snd,50);	% Normalizzazione del segnale generato
sound(snd,srate);				% Suono del segnale generato
