% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 1 - Question 2
 
clc;
clear all;
close all;
 
x1 = -5:4;
x2 = 0:9;
 
n = 5;
 
v1 = zeros(0,9);
v1(n:n+1) = 1
 
v2 = zeros (1,n);
v2(n+1:9) = 1
 
subplot(2, 2, 1)
stem(x1, v1)
 
hold on 
 
subplot(2, 2, 2)
stem(x2, v1)
 
subplot(2, 2, 3)
stem(x1, v2)
 
subplot(2, 2, 4)
stem(x2, v2)
 
hold off
