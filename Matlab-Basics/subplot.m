% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 1 - Question 1
% Plot Multiple Graphs in One Figure using subplot and hold

clc;
clear all;
close all;
 
r = 1:10;
v_sp = 4/3*pi*(r.^3);
s_sp = 4*pi*(r.^2);
 
v_sq = r.^3;
s_sq = 6*(r.^2);
 
subplot(1, 2, 1)
plot(r, v_sp, r, s_sp)
title('Sphere Volume vs Surface Area')
xlabel('Radius')
ylabel('Volume and Surface Area')
legend('Volume', 'Surface Area')
 
hold on
 
subplot(1, 2, 2)
plot(r, v_sq, r, s_sp)
title('Square Volume vs Surface Area')
xlabel('Side Length')
ylabel('Volume and Surface Area')
legend('Volume', 'Surface Area')
 
hold off
