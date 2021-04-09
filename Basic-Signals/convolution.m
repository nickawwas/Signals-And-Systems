% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 2 - Part2 Question 2
% Calculate System Response Using Convolution 

clc;
clear all;
close all;
 
n=[0:9];
x=zeros(1,10);
x(2:4) = 1;
 
h =(1/4).^n;
y = conv(x, h);
 
%New Range 
nd=[1:19];
 
stem(nd,y)
xlabel('n')
ylabel('y[n]')
title('Convoluted Signal')
