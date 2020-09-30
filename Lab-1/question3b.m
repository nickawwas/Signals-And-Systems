% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 1 - Question 3 b)
 
clc;
clear all;
close all;
 
n = [0:4*1024];
x1 = cos(3.14/4*n + 3.14/3);
x2 = cos(9*3.14/4.*n + 3.14/3);
 
ans = sum(x1) - sum(x2)
