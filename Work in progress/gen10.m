function [snd] = gen10(partiture, sample_rate);

[row,col] = size(partiture);

fprintf('\n');
fprintf(' Sample Rate : %d sample/sec.\n', sample_rate);

global_time = partiture{1,1} + partiture{1,2};
for i = 2 : 1 : row
   temp = partiture{i,1} + partiture{i,2};
   if (temp > global_time)
      global_time = temp;
   end
end
fprintf(' Global time : %d sample (%d sec.)\n', global_time * sample_rate, global_time);
snd = zeros(1, length(global_time*sample_rate));

for i = 1 : 1 : row
  fprintf('\n Generating sound %d ...\n', i);
  creation_time = partiture{i,1};
  fprintf(' Creation time : %d sample (%d sec.)\n', creation_time * sample_rate, creation_time);
  action_time = partiture{i,2};               
  fprintf(' Action time : %d sample (%d sec.)\n', action_time * sample_rate, action_time);
  
  ctime = linspace(0, creation_time, creation_time * sample_rate);
  atime = linspace(0, action_time, action_time * sample_rate);
  gtime = linspace(0, global_time, global_time * sample_rate);
  waveform = zeros(1, length(atime));
  amplitude = partiture{i,4};
  
  if (length(partiture{i,3}) > 1)
     fprintf(' Applying glissando...\n');
     gliss_temp = partiture{i,3};
     glissize = length(gliss_temp);
     if (mod(glissize,3) ~= 0)
        fprintf(' Error in glissando definition!\n');
        fprintf(' Usage: [ init_freq1 end_freq1 dur1 init_freq2 end_freq2 dur2 ...]\n');
        return
     end
     
     checktime = 0;
     for j = 1 : 3 : length(gliss_temp)
        init_freq = gliss_temp(j);
        end_freq = (gliss_temp(j+1) + init_freq)/2;
        glissact = gliss_temp(j+2);
        glisstime = linspace(0,glissact, glissact * sample_rate);
        checktime = checktime + glissact;
        if (checktime > action_time)
           fprintf(' Error in glissando definition!\n');
           fprintf(' Glissando action time must be less than note action time\n');
           return
        end
        frequency = linspace(init_freq, end_freq, glissact * sample_rate);
        if (j == 1)
           waveform = amplitude * sin(2 * pi * frequency .* glisstime);
        else
           waveform = cat(2, waveform, amplitude * sin(2 * pi * frequency .* glisstime));
        end
     end
  else
     frequency = partiture{i,3};
     waveform = amplitude * sin(2 * pi * frequency * atime);   
 end

  % num_armonic = partiture(i,5);
  % for j = 1 : 1 : num_armonic
  %    arm_amplitude = partiture(i,j+5);
  %    waveform = arm_amplitude * sin(2 * pi * j * frequency .* atime) + waveform;
  % end
  
%  amplitude = partiture{i,4};
%  waveform = amplitude * sin(2 * pi * frequency .* atime);
  in_silence = zeros(1, length(ctime)-1);
  out_silence = zeros(1, length(gtime) - length(in_silence) - length(waveform));
  waveform = [ in_silence, waveform, out_silence ];
  
  if (i == 1)	% Prima iterazione
     output = waveform;
  else
     output = [ output ; waveform ];
  end
  
  snd = snd + waveform;
  
end
 
fprintf('\n Sounding...\n');
sound(snd, sample_rate);
pause(global_time + 1);
fprintf(' Audio device free...\n\n');      