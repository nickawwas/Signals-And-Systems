% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 2 - Question 1a)
 
clc;
clear all;
close all;
 
n=0:9;
x=n;
y=x.^2;
 
xEnergy = 0;
yEnergy = 0;
 
for i=x
    xEnergy = xEnergy + i.^2;
end
 
for j=y
    yEnergy = yEnergy + j.^2;
end
 
disp(xEnergy)
disp(yEnergy)
 
subplot(2,1,1)
stem(n, x)
xlabel('n')
ylabel('x[n]')
title('Energy of x[n]')
 
subplot(2,1,2)
stem(n, y)
xlabel('n')
ylabel('y[n]')
title('Energy of y[n]')
