% Funzione: drawfft
% -----------------
% Disegna a video il grafico della DFT (calcolata mediante 'fft').
%
% Prototipo: drawfft(snd, srate, npoint)
% Input:
%   - snd: suono (vettore) al quale applicare l'algoritmo 'fft'
%   - srate: frequenza di campionamento (Hz)
%   - npoint: numero di punti con cui applicare 'fft'
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



function drawfft(snd, srate, npoint);

if nargin == 2
   amp = abs(real(fft(snd)));
elseif nargin == 3
   amp = abs(real(fft(snd,npoint)));
end
[maxamp,index] = max(amp);
freqvec = (0:length(amp)-1) * srate / length(amp);
stem(freqvec,amp,'.');
axis([0 srate/2 min(amp) max(amp)]);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
grid on;
zoom xon;