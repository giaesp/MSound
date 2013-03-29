x = linspace(1,13,13);

% Inizializzazione valori grafico 1
for i = 1 : 13
   y1(i) = 0;
end
y1(4) = 1; y1(5) = 2; y1(6) = 4; y1(7) = 7; y1(8) = 4; y1(9) = 2; y1(10) = 1;

% Inizializzazione valori grafico 2
for i = 1 : 13;
   y2(i) = 0;
end
y2(1) = 4; y2(2) = 2; y2(4) = 7; y2(5) = 1; y2(7) = 4; y2(10) = 2;

% Inizializzazione valori grafico 3
for i = 1 : 13;
   y3(i) = 0;
end
y3(1) = 8; y3(2) = 7; y3(3) = 4; y3(4) = 2; y3(5) = 1; 

% Inizializzazione valori grafico 4
for i = 1 : 13;
   y4(i) = 0;
end
y4(3) = 1; y4(4) = 2; y4(5) = 3; y4(6) = 4; y4(7) = 7; y4(8) = 4; y4(9) = 3; y4(10) = 2; y4(11) = 1;

% Inizializzazione valori grafico 5
for i = 1 : 13;
   y5(i) = 0;
end
y5(1) = 4; y5(2) = 3; y5(4) = 7; y5(5) = 2; y5(7) = 4; y5(8) = 1; y5(10) = 3; y(12) = 2;

% Inizializzazione valori grafico 6
for i = 1 : 13;
   y6(i) = 0;
end
y6(1) = 7; y6(2) = 8; y6(3) = 6; y6(4) = 4; y6(5) = 2; y6(6) = 1;

% Inizializzazione valori grafico 7
for i = 1 : 13;
   y7(i) = 0;
end
y7(2) = 1; y7(3) = 2; y7(4) = 3; y7(5) = 4; y7(6) = 3; y7(7) = 6; y7(8) = 3; y7(9) = 4; y7(10) = 3; y7(11) = 2; y7(12) = 1;

% Inizializzazione valori grafico 8
for i = 1 : 13;
   y8(i) = 0;
end
y8(1) = 3; y8(2) = 4; y8(4) = 6; y8(5) = 3; y8(7) = 3; y8(8) = 2; y8(10) = 4; y8(11) = 1; y8(13) = 3;

% Inizializzazione valori grafico 9
for i = 1 : 13;
   y9(i) = 0;
end
y9(1) = 6; y9(2) = 6; y9(3) = 8; y9(4) = 6; y9(5) = 4; y9(6) = 2; y9(7) = 1;

% Inizializzazione valori grafico 10
for i = 1 : 13;
   y10(i) = 0;
end
y10(2) = 2; y10(3) = 3; y10(4) = 4; y10(5) = 3; y10(6) = 1; y10(7) = 5; y10(8) = 1; y10(9) = 3; y10(10) = 4; y10(11) = 3; y10(12) = 2;

% Inizializzazione valori grafico 11
for i = 1 : 13;
   y11(i) = 0;
end
y11(1) = 1; y11(2) = 4; y11(4) = 5; y11(5) = 3; y11(7) = 1; y11(8) = 3; y11(10) = 4; y11(11) = 2; y11(13) = 4; 

% Inizializzazione valori grafico 12
for i = 1 : 13;
   y12(i) = 0;
end
y12(5) = 4; y12(2) = 2; y12(3) = 6; y12(4) = 8; y12(5) = 6; y12(6) = 3; y12(7) = 2;


subplot(4,3,1);
stem(x,y1);
axis([2 12 0 8]);
set(gca,'YTick',[]);

subplot(4,3,2);
stem(x,y2);
axis([1 13 0 8]);
set(gca,'YTick',[]);

subplot(4,3,3);
stem(x,y3);
axis([1 7 0 8]);
set(gca,'YTick',[]);

subplot(4,3,4);
stem(x,y4);
axis([2 12 0 8]);
set(gca,'YTick',[]);

subplot(4,3,5);
stem(x,y5);
axis([1 13 0 8]);
set(gca,'YTick',[]);

subplot(4,3,6);
stem(x,y6);
axis([1 7 0 8]);
set(gca,'YTick',[]);

subplot(4,3,7);
stem(x,y7);
axis([2 12 0 8]);
set(gca,'YTick',[]);

subplot(4,3,8);
stem(x,y8);
axis([1 13 0 8]);
set(gca,'YTick',[]);

subplot(4,3,9);
stem(x,y9);
axis([1 7 0 8]);
set(gca,'YTick',[]);

subplot(4,3,10);
stem(x,y10);
axis([2 12 0 8]);
set(gca,'YTick',[]);

subplot(4,3,11);
stem(x,y11);
axis([1 13 0 8]);
set(gca,'YTick',[]);

subplot(4,3,12);
stem(x,y12);
axis([1 7 0 8]);
set(gca,'YTick',[]);
