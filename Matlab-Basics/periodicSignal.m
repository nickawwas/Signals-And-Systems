% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 1 - Question 3 a)
% Determines if Signal is Periodic

clc;
clear all;
close all;
 
x = [0:4*1024];
y1 = cos( (2*pi)/1024 * x );
y2 = cos( (2*pi)/1024 * (x + 1024));
 
ans = sum(y2) - sum(y1)
