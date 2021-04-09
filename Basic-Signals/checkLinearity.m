% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 2 - Question 2a)
% Determine If a Signal is Linear or Not

clc;
clear all;
close all;
 
n=0:10;
x1=sin((2*pi/10)*n);
x2=cos((2*pi/10)*n);
x3=x2+x1;
 
y1=2*x1;
y2=2*x2;
y3=2*x3;
y4=y1+y2;
 
if (y4 == y3)
    disp('Linear!')
else
    disp('Not Linear!')
end
 
subplot(2,1,1)
 
hold on
 
stem(n, x1)
xlabel('n')
ylabel('x[n]')
title('Input Signals')
 
stem(n, x2)
 
stem(n, x3)
 
hold off
 
subplot(2,1,2)
hold on
 
stem(n, y1)
xlabel('n')
ylabel('y[n]')
title('Output Signals')
 
stem(n, y2)
 
stem(n, y3)
 
hold off
