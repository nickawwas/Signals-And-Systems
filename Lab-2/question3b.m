% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 2 - Question 3b
 
clc;
clear all;
close all;
 
n=-5:5;
a = abs(n);
x=(-1).^(n-1);
xm=(-1).^(-n-1);
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
