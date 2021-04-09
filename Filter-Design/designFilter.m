% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 5 - 2
% Create a Signal and Design a Filter to Remove a Component

clc;
clear all;
close all;
 
% Order 
n1 = 4;
n2 = 8;
 
%Times Using Nyquist Theorem (Lowest Value) 6000/2pi ~ 1000
% 2*1000 ~ 2000, 1/2000 ~ 5e^-4, Increase to Make it Smoother
t = 0:1/8192:3;
 
%Input Signal
x1 = sin(2*pi*200*t);
x2 = sin(2*pi*330*t);
x2(1:8192) = 0;
x3 = sin(2*pi*480*t);
x3(1:2*8192) = 0;
x = x1 + x2 + x3;
%plot(t,x);
%title('Input Signal with Three Tones');
%ylabel('x[n]');
%xlabel('n');
 
df = (-pi + 2*pi/length(x)):2*pi/length(x):pi;
cf = df*8192/(2*pi);
Xf = fft(x);
%Xf = DFT(x, df);
plot(cf, fftshift(abs(Xf)));
title('Fourier Transform of Input Signal');
ylabel('X(w)');
xlabel('w');

%Play Signal Before Passing Through Filter
%player = audioplayer(x,8192);
%play(player);
 
%Part B)
H = designfilt('bandstopiir', 'FilterOrder', 8, 'StopbandFrequency1', 300,...
    'StopbandFrequency2', 380, 'StopbandAttenuation', 60, 'SampleRate', 8192);
y = filtfilt(H, x);
%fvtool(H)

%Part C)
Yf = fft(y);
%plot(cf, fftshift(abs(Yf)));
%title('Filtered Signal');
%ylabel('y[n]');
%xlabel('n'); 

%Play Signal Before Passing Through Filter
%player_y = audioplayer(y,8192);
%play(player_y);
 
 
%DFT Function
function [Xf] = DFT(Xn, n)
    global t;
    Xf = zeros(1, length(t));
 
    for indX=1:length(t)
        transform = 0;
        for indN=1:length(n)
            transform = transform + Xn(indN)*exp(-1i*t(indX)*n(indN));
        end
        Xf(indX) = transform;
    end
end
