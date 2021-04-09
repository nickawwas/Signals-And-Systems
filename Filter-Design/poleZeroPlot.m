% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 5 - PreLab 2d
% Determine Pole Zero Plot for Butterworth Filter

clc;
clear all;
close all;
 
%Open SPTool By Typing in Command Window
%sptool
 
%Sampling Rate
f = 8000;
 
%Pass and Stop Band Frequencies
wp = 1000;
ws = 1400;
 
%Normalized Frequencies
wpn = wp/f;
wsn = ws/f;
 
%Attenuation Pass and Stop Band
Rp = 1;
Rs = 80;
 
%Determine Order and Cutoff Frequency
% Order 29, Cutoff 0.1289 KHz
[n, Wn] = buttord(wpn, wsn, Rp, Rs);
 
%Butterworth Filter Design 
[b, a] = butter (n, Wn, 's');
zplane(b, a)
title('Rounded Pole Zero Plot');

b = round(b)
a = round(a)
zplane(b, a)
title('Unrounded Pole Zero Plot');
