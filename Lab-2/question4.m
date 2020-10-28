% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 2 - Question 4
 
clc;
clear all;
close all;
 
n=[0:9];
x=zeros(1,10);
x(2:4) = 1;
y(1)=x(1);
 
for i=2:10
    y(i) = x(i) + (1/4)*y(i-1);
end
 
subplot(1,2,1)
stem(n,x)
xlabel('n')
ylabel('x[n]')
title('Input Signal')
 
subplot(1,2,2)
stem(n,y)
xlabel('n')
ylabel('y[n]')
title('Output Signal') 
