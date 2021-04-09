% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 5 - 1a
% Design an IIR Butterworth Filter using Nyquist Theorem, designfilt, and filtfilt

clc;
clear all;
close all;
 
% Order 
n1 = 4;
n2 = 8;
 
%Times Using Nyquist Theorem (Lowest Value) 6000/2pi ~ 1000
% 2*1000 ~ 2000, 1/2000 ~ 5e^-4, Increase to Make it Smoother
t = -0.1:1/10e3:0.1;
 
%Input Signal
x = sin(100*t) + sin(2000*t) + sin(6000*t);
%plot(t,x);
 
%Cutoff Frequency
Wn = 2000/(2*pi);
 
%Butterworth Filter Design 
H = designfilt('bandpassiir','FilterOrder',n1, ... 
    'HalfPowerFrequency1',200,'HalfPowerFrequency2',400, ...
    'SampleRate',10000);
 
Y = filtfilt(H,x);
figure
subplot(2, 1, 1)
plot(t,x)
title('Input Signal w/ Order 4')
ylabel('x[n]')
xlabel('n')
 
subplot(2,1,2)
plot(t,Y)
title('Filtered Signal Using Butterworth w/ Order 4')
ylabel('y[n]')
xlabel('n')
freqz(H)
title('Frequency Response Using Butterworth w/ Order 4')
 
%Butterworth Filter Design 
H2 = designfilt('bandpassiir','FilterOrder',n2, ... 
    'HalfPowerFrequency1',200,'HalfPowerFrequency2',400, ...
    'SampleRate',10000);
 
Y2 = filtfilt(H2,x);
figure
subplot(2, 1, 1)
plot(t,x)
title('Input Signal w/ Order 8')
xlabel('x[n]')
ylabel('n')
subplot(2,1,2)
plot(t,Y2)
title('Filtered Signal using Butterworth w/ Order 8')
xlabel('y[n]')
ylabel('n')
freqz(H2)
title('Frequency Response Using Butterworth w/ Order 8')

