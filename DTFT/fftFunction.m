% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 3 - Question 2
% Compare Built-In Fast Fourier Transform (FFT) with My DTFT Code 

clc;
clear all;
close all;
 
n=-10:10;
 
Xn=zeros(1, 21);
Xn(9:13) = 1;
 
subplot(3, 1, 1)
stem(n,Xn)
ylabel('x[n]');
xlabel('n');
title('Time Signal');
 
w= 0:2*pi/length(n):2*pi-2*pi/length(n);
 
FT = DTFT(n, Xn, w);
 
subplot(3, 1, 2)
plot(w, abs(FT))
ylabel('X(w)');
xlabel('w');
title('Fourier Transform');
 
Xfft = fft(Xn);
subplot(3, 1, 3)
plot(w, abs(Xfft))
ylabel('X(w)');
xlabel('w');
title('Fourier Transform Using FFT');
 
function [Xf] = DTFT(n, Xn, w)
    Xf = zeros(1, length(w));
 
    for indX=1:length(w)
        transform = 0;
        for indN=1:length(n)
            transform = transform + Xn(indN)*exp(-1i*w(indX)*n(indN));
        end
        Xf(indX) = transform;
    end
end

