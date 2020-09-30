% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 1 - Question 3 c)
 
clc;
clear all;
close all;
 
n = [0:31];
x1 = cos(pi/4*n + pi/3);
x2 = cos(9*pi/4.*n + pi/3);
 
ans = sum(x1) - sum(x2)
