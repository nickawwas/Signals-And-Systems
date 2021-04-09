% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 3 - Question 1
% Calculate and Plot DTFT with Step Size Bt Bounds

clc;
clear all;
close all;
 
% -10 to 10
n=-10:10;
 
Xn=zeros(1, 21);
Xn(9:13) = 1;
 
subplot(2, 1, 1)
stem(n,Xn)
ylabel('x[n]');
xlabel('n');
title('Time Signal');
 
w=-pi:0.1:pi;
 
FT = DTFT(n, Xn, w);
 
subplot(2, 1, 2)
plot(w, abs(FT))
ylabel('X(w)');
xlabel('w');
title('Fourier Transform');
 
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

