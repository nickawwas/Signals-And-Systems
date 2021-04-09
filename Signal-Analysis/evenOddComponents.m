% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 2 - Question 3a
% Calculates Even and Odd Signal Components

clc;
clear all;
close all;
 
n=0:10;
a = abs(n);
x=exp(-2*a).*sin((2*pi/36)*n);
xm=exp(-2*a).*sin((2*pi/36)*(-n));
 
xe=1/2*(x+xm);
xo=1/2*(x-xm);
 
subplot(2,1,1)
stem(n, xe)
xlabel('n')
ylabel('xe[n]')
title('Even Signal Component')
 
subplot(2,1,2)
stem(n, xo)
xlabel('n')
ylabel('xo[n]')
title('Odd Signal Component')
