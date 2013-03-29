% Funzione: drawsound
% -------------------
% Disegna a video il grafico del suono
%
% Prototipo: drawsound(snd)
% Input:
%   - snd: suono (vettore) del quale si desidera il grafico
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



function drawsound(snd);

plot(snd);
axis([1 length(snd) min(snd) max(snd)]);
xlabel('Sample');
ylabel('Amplitude (absolute value)');
grid on;
zoom xon;