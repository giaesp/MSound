function [snd] = composestereo(partiture, sample_rate);

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
leftpart = zeros(1, (global_time*sample_rate));
rightpart = zeros(1, (global_time*sample_rate));
snd = [ leftpart ; rightpart ];

for i = 1 : 1 : row
  fprintf('\n Generating sound %d ...\n', i);
  creation_time = partiture{i,1};
  fprintf(' Creation time : %d sample (%d sec.)\n', creation_time * sample_rate, creation_time);
  action_time = partiture{i,2};               
  fprintf(' Action time : %d sample (%d sec.)\n', action_time * sample_rate, action_time);
  
  ctime = linspace(0, creation_time, creation_time * sample_rate);
  atime = linspace(0, action_time, action_time * sample_rate);
  gtime = linspace(0, global_time, global_time * sample_rate);
  
  waveleft = zeros(1, length(atime));
  waveright = zeros(1, length(atime));
  waveform = [ waveleft ; waveright ];
  
  st_values = partiture{i,3};
  
  p_coeff = partiture{i,3};
  q_coeff = 1 - p_coeff;
  decl_amp = partiture{i,5};  
  if q_coeff == 0
     left_amp = 0;
  else
     left_amp = decl_amp/q_coeff;
  end
  if p_coeff == 0
     right_amp = 0;
  else
     right_amp = decl_amp/p_coeff;
  end
    
  if (length(partiture{i,4}) > 1)
     fprintf(' Applying glissando...\n');
     gliss_temp = partiture{i,4};
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
           waveleft = left_amp * q_coeff * sin(2 * pi * frequency .* glisstime);
           waveright = right_amp * p_coeff * sin(2 * pi * frequency .* glisstime);
        else
           waveleft = [waveleft, left_amp * q_coeff * sin(2 * pi * frequency .* glisstime)];
           waveright = [waveright, right_amp * p_coeff * sin(2 * pi * frequency .* glisstime)];
        end
     end
     waveform = [ waveleft ; waveright];
  else
     frequency = partiture{i,4};
     waveleft = left_amp * q_coeff * sin(2 * pi * frequency * atime);
     waveright = right_amp * p_coeff * sin(2 * pi * frequency * atime);
     waveform = [ waveleft ; waveright];   
  end

  % num_armonic = partiture(i,5);
  % for j = 1 : 1 : num_armonic
  %    arm_amplitude = partiture(i,j+5);
  %    waveform = arm_amplitude * sin(2 * pi * j * frequency .* atime) + waveform;
  % end
  
%  amplitude = partiture{i,4};
%  waveform = amplitude * sin(2 * pi * frequency .* atime);

  in_silence = zeros(2, length(ctime)-1);
  out_silence = zeros(2, length(gtime) - length(in_silence) - length(waveform));
  waveform = [ in_silence, waveform, out_silence ];
  
  if (i == 1)	% Prima iterazione
     output = waveform;
  else
     output = [ output , waveform ];
  end
  
  snd = snd + waveform;

end
 
snd = snd'; 
fprintf('\n Sounding...\n');
sound(snd, sample_rate);
pause(global_time + 1);
fprintf(' Audio device free...\n\n');      