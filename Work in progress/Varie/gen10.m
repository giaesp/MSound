% gen10
%
% 

function waveform = gen10(creation_time, duration_time, arm_amplitude, frequency, sample_rate);

n = length(arm_amplitude);
time = [ 0 : 1/sample_rate : duration_time ];
waveform = zeros(1, length(time));

for i = 1 : 1 : n
   waveform = arm_amplitude(i) * sin(2 * pi * i * frequency * time) + waveform;
end

if (creation_time > 0)
   ttemp = [ 0 : 1/sample_rate : creation_time ];
   wftemp = zeros(1, length(ttemp)); 
   waveform = [wftemp, waveform];   
end

plot(waveform);
sound(waveform, sample_rate);
