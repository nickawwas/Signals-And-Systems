% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 3 - Question 3
% Calculate Inverse DFT Using ifft

clc;
clear all;
close all;
 
n=-10:10;
 
Xn=zeros(1, 21);
Xn(9:13) = 1;
 
subplot(2, 1, 1)
stem(n,Xn)
ylabel('x[n]');
xlabel('n');
title('Time Signal');
 
w=0:2*pi/length(n):2*pi-2*pi/length(n);
 
Xfft = fft(Xn);
Xnifft = ifft(Xfft);
 
subplot(2, 1, 2)
stem(n, abs(Xnifft))
ylabel('x[n]');
xlabel('n');
title('Time Signal Using FFT Then IFFT');

