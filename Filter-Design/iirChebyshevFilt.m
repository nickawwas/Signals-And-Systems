% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 5 - 1b
% Design IIR Chebyshev I Filter Using Nyquist Theorem, designfilt, and filtfilt

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
 
%Chebyshev Filter Design 
H =designfilt('bandpassiir', 'FilterOrder', n1, ...
    'PassbandFrequency1', 200, 'PassbandFrequency2', 400, ...
    'PassbandRipple', 1, 'SampleRate', 10000);
 
Y = filtfilt(H,x);
figure
subplot(2, 1, 1)
plot(t,x)
title('Input Signal w/ Order 4')
ylabel('x[n]')
xlabel('n')
 
subplot(2,1,2)
plot(t,Y)
title('Filtered Signal Using Chebyshev w/ Order 4')
ylabel('y[n]')
xlabel('n')
freqz(H)
title('Frequency Response Using Chebyshev w/ Order 4')
 
%Chebyshev Filter Design 
H2 = designfilt('bandpassiir', 'FilterOrder', n2, ...
    'PassbandFrequency1', 200, 'PassbandFrequency2', 400, ...
    'PassbandRipple', 1, 'SampleRate', 10000);
 
Y2 = filtfilt(H2,x);
figure
subplot(2, 1, 1)
plot(t,x)
title('Input Signal w/ Order 8')
ylabel('x[n]')
xlabel('n')
subplot(2,1,2)
plot(t,Y2)
title('Filtered Signal Using Chebyshev w/ Order 8')
ylabel('y[n]')
xlabel('n')
freqz(H2)
title('Frequency Response Using Butterworth w/ Order 8')

