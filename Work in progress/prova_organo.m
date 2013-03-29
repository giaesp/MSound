function [snd] = organ(note)

srate = 22050;
sec = 2;
t = linspace(0,2,2*srate);

env_a = [ linspace(1.00,0.84,srate*0.4*sec) linspace(0.84,0.00,srate*0.6*sec) ]; 
env_b = [ linspace(0.00,0.99,srate*0.3*sec) linspace(0.99,0.99,srate*0.4*sec) linspace(0.99,0.00,srate*0.3*sec) ];
env_c = env_a;
env_d = env_b;
env_e = env_a;
env_f = env_b;

feed_a = env_a .* sin(2 * pi * 4 * note * t);
mod_a =  env_a .* sin(2 * pi * 4 * note * t + 0.5 * feed_a);
car_b =  env_b .* sin(2 * pi * 4 * note * t + 0.74 * mod_a);

feed_c = env_c .* sin(2 * pi * 2 * note * t);
mod_c =  env_c .* sin(2 * pi * 2 * note * t + 0.5 * feed_a);
car_d =  env_d .* sin(2 * pi * 2 * note * t + 0.71 * mod_a);

feed_e = env_e .* sin(2 * pi * note * t);
mod_e =  env_e .* sin(2 * pi * note * t + 0.5 * feed_a);
car_f =  env_f .* sin(2 * pi * note * t + 0.84 * mod_a);

snd = car_b + car_d + car_f;
snd = normalize(snd,50);
% sound(snd,srate);