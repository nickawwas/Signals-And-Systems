% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 4 - Question 1b)
% Calculate DTFT, Requesting Sampling Rate and Window Size
% Plot in Time and Frequency Domains 

clc;
clear all;
close all;
 
sr = input('Enter Sampling Rate: ');
N = 2*sr;
 
global w;
 
for i = 1:5
   ws = input('Enter Window Size: ');
   w = -ws*pi:0.05:ws*pi;
   
   n = 0:(ws*N - 1);
   x = sin((2*pi/N)*n);
   
   Xw = DFT(x, n);
   
   figure
   subplot(2,1,1)
   stem(n,x)
   ylabel('X[n]');
   xlabel('n');
   title('Time Domain');
   
   subplot(2,1,2)
   plot(w,abs(Xw))
   ylabel('X(w)');
   xlabel('w');
   title('Frequency Domain');
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

