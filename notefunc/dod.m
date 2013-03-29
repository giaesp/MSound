function note = dod(octave)

switch(octave)
case 0 
   note = 34.6478;
case 1 
   note = 69.2957;
case 2 
   note = 138.5913;
case 3
   note = 277.1826;
case 4
   note = 554.3653;
case 5
   note = 1108.7305;
case 6 
   note = 2217.4610;
case 7
   note = 4434.9221;   
otherwise
   fprintf(' DO# error: unknown octave\n');
   return
end