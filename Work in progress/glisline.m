function kglis = glisline(first_freq,last_freq,duration_time,sample_rate);

kglis = linspace(first_freq,last_freq,(duration_time*sample_rate)+1);