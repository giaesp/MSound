function [snd] = organ(note,sec,srate)

if nargin == 2
   srate = 44100;
end

t = linspace(0,sec,sec*srate);

env_a = [ linspace(1.00,0.84,srate*0.4*sec) linspace(0.84,0.00,srate*0.6*sec) ];
plot(env_a);
env_b = [ linspace(0.00,0.99,srate*0.2*sec) linspace(0.99,0.99,srate*0.4*sec) linspace(0.99,0.00,srate*0.4*sec) ];
env_c = env_a;
env_d = env_b;
env_e = env_a;
env_f = env_b;

feed_a = env_a .* sin(2 * pi * (note/4) * t);
mod_a =  env_a .* sin(2 * pi * (note/4) * t + 0.5 * feed_a);
car_b =  0.57 * env_b .* sin(2 * pi * (note + 0.19) * t + 0.74 * mod_a);

feed_c = env_c .* sin(2 * pi * ((note/2) - 0.20) * t);
mod_c =  env_c .* sin(2 * pi * ((note/2) - 0.20) * t + 0.5 * feed_c);
car_d =  0.75 * env_d .* sin(2 * pi * (note + 0.17) * t + 0.71 * mod_c);

feed_e = env_e .* sin(2 * pi * (note + 0.20) * t);
mod_e =  env_e .* sin(2 * pi * (note + 0.20) * t + 0.5 * feed_e);
car_f =  0.75 * env_f .* sin(2 * pi * (note+0.15) * t + 0.84 * mod_e);

snd = car_b + car_d + car_f;
snd = normalize(snd,50);
% sound(snd,srate);