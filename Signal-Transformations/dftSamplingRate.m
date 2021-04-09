% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 4 - Question 1a)
% Calcualte DTFT, Requesting Period, Step Size, and Sampling Rate

clc;
clear all;
close all;
 
p = input('Enter the period: ');
s = input('Enter step size: ');
 
global w;
w = -p*pi:s:p*pi;
 
for i = 1:5
   sr = input('Enter Sampling Rate: ');
   N = 2*sr;
   n = 0:(2*N - 1);
   x = sin((2*pi/N)*n);
   
   Xw = DFT(x, n);
   
   figure
   subplot(2,1,1)
   stem(n,x)
   ylabel('X');
   xlabel('n');
   title('Time Domain');
   
   subplot(2,1,2)
   plot(w,abs(Xw))
   ylabel('X(w)');
   xlabel('w');
   title('Fourier Transform');
end
 
function [Xf] = DFT(Xn, n)
    global w;
    Xf = zeros(1, length(w));
 
    for indX=1:length(w)
        transform = 0;
        for indN=1:length(n)
            transform = transform + Xn(indN)*exp(-1i*w(indX)*n(indN));
        end
        Xf(indX) = transform;
    end
end

