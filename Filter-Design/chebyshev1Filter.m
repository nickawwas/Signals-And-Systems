% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 5 - PreLab 2b
% Chebyshev Filter I Design Using cheb1ord and cheby1

clc;
clear all;
close all;
 
%Open SPTool By Typing in Command Window
%sptool
 
%Sampling Rate
wsr = 8000;
 
%Pass and Stop Band Frequencies
wp = 1000;
ws = 1400;
 
%Normalized Frequencies
wpn = wp/wsr;
wsn = ws/wsr;
 
%Attenuation Pass and Stop Band
Rp = 1;
Rs = 80;
 
%Determine Order and Cutoff Frequency
% Order 12, Cutoff 0.1250 KHz
[n, Wp] = cheb1ord(wpn, wsn, Rp, Rs);
 
%Chebyshev Filter Design (cheby1 or cheby2)
[b, a] = cheby1(n, Rp, Wp, 's');
g = tf(b, a);
%Plot Magnitude and Phase Response
bode(g,{0, 1000}); grid;
