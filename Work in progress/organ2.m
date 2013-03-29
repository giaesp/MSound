srate = 22050;
t = linspace(0,2,2*srate);

mod_a1 = sin(2*pi*50*t);
mod_a2 = sin(2*pi*74*t + mod_a1);

mod_c1 = sin(2*pi*50*t);
mod_c2 = sin(2*pi*71*t + mod_c1);

mod_e1 = sin(2*pi*50*t);
mod_e2 = sin(2*pi*84*t + mod_e1);

car_b = sin(2*pi*220*t + mod_a2);
car_d = sin(2*pi*220*t + mod_c2);
car_e = sin(2*pi*220*t + mod_e2);

snd = car_b + car_d + car_e;
sound(snd,srate);