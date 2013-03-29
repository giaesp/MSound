% Funzione: compose(partiture,srate)
% ----------------------------------
% Elabora la partitura specificate con il sample rate specificato (srate).
% Per modificare lo strumento è sufficiente cambiare la chiamata a funzione della riga 26.
%
% Si osservi l'uso di un file temporaneo di supporto: questo previene l'esaurimento della memoria
% di sistema, ed inoltre velocizza l'intera procedura, la quale elabora singolarmente
% ciascuna nota della partitura, elaborando una notevole mole di dati.
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



function [snd] = compose(partiture,srate);

% Scrittura a video di informazioni sulla partitura e sui parametri passati
fprintf('\n Partiture statistics:\n');
fprintf(' Sample rate: %d\n', srate);
[row,col] = size(partiture);
fprintf(' Number of notes: %d\n', row);

% Calcolo del tempo totale della partitura
global_time = partiture{row,1} + partiture{row,2};
fprintf(' Global time : %d sample (%d sec.)\n', global_time * srate, global_time);

% Apertura del file temporaneo in scrittura
fprintf(' Opening temporary file...\n');
fid = fopen('temp.snd','w');

fprintf('\n Composing partiture:\n');

creation_time = partiture{1,1};	% Lettura del tempo di creazione della nota
action_time = partiture{1,2};    % Lettura del tempo di durata della nota
atime = linspace(0, action_time, action_time * srate);	% Creazione del vettore tempo per la nota
amplitude = partiture{1,4};		% Lettura dell'ampiezza della nota
frequency = partiture{1,3};		% Lettura della frequenza della nota
waveform = amplitude * organ(frequency,action_time,srate);	% Creazione della prima nota
% Stampa a video informazioni sulla nota elaborata (debug)
fprintf(' Note: #1 - Action time: %d sec. (%d samples)\n', action_time, action_time * srate);
  
temp = waveform;
snd = [];
% Genera le note successive alla prima
for i = 2 : row
  creation_time = partiture{i,1};
  action_time = partiture{i,2};               
  fprintf(' Note: #%d - Action time: %d sec. (%d samples) - Op.:', i, action_time, action_time * srate);
  atime = linspace(0, action_time, action_time * srate);
  amplitude = partiture{i,4};
  frequency = partiture{i,3};
  waveform = amplitude * organ(frequency,action_time,srate);
  
  % Controlla se i tempi d'inizio e di durata della nota attuale sono uguali a quelli della nota
  % precedente: in caso affermativo le due note si sovrappongono.
  prev_ctime = partiture{i - 1,1};
  prev_atime = partiture{i - 1,2};
  
  if (creation_time == prev_ctime) & (action_time == prev_atime)
     fprintf(' Updating\n');
     temp = temp + waveform;
  else
     fprintf(' Adding\n');
     snd = [snd temp];
     fwrite(fid,snd,'single');
     snd = [];
     temp = waveform;
  end
end

fclose(fid);	% Chiude il file temporaneo in scrittura
fid = fopen('temp.snd','r');	% Riapre il file temporaneo in lettura
snd = fread(fid,'single');		% Legge dal file temporaneo il suono elaborato
fclose(fid);	% Chiude il file temporaneo il lettura