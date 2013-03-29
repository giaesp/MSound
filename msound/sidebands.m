% Funzione: sidebands
% -------------------
% Calcolo delle frequenze delle bande laterali create da una modulazione di frequenza.
%
% Prototipo: sidebands(freq, c_ratio, m_ratio, mod_index)
% Input: 
%   - freq: frequenza del segnale portante
%   - c_ratio: valore della portante nel rapporto C:M
%   - m_ratio: valore della modulante nel rapporto C:M
%   - mod_index: indice di modulazione
% Output:
%   - La funzione produce a video le frequenze delle bande laterali generate.
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



function sidebands(frequency, c_ratio, m_ratio, m_index);

for k=1: m_index +2
   uppersb = (c_ratio * frequency) + (k * frequency * m_ratio);
   lowersb = abs((c_ratio * frequency) - (k * frequency * m_ratio));
   fprintf ('With k at %d, upper sideband: %d Hz; lower sideband: %d Hz \n',k,uppersb,lowersb);
end
