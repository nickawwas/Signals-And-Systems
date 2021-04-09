% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 4 - Question 3
% Load Audio Files Using Audio Read
% Recover Original Signal Using fft and ifft Properties
% Play Audio Signals Using audioplayer and play
% Calculate Mean Square Error (MSE)

clc;
clear all;
close all;
 
[y, Fs] = audioread('Original.wav');
[y_dis, Fs_dis] = audioread('Distorted.wav');
 
% Can Play the Audio Using a Player and Play Command
%player_O = audioplayer(y, Fs);
%player_D = audioplayer(y_dis, Fs_dis);
%play(player_O);
%play(player_D);
 
%Part a)
%t = 1/Fs:0.1:2/Fs;
subplot(3, 1, 1)
plot(y)
ylabel('y[n]');
xlabel('n');
title("Original Wave");
 
%t_dis = 1/Fs_dis:0.1:2/Fs_dis;
subplot(3, 1, 2)
plot(y_dis)
ylabel('y-dis[n]');
xlabel('n');
title("Distorted Wave");
 
%Part b)
mse = MSE(y, y_dis, 44100);
disp("MSE (Orig and Dis) = " + mse);
 
%Part c)
yf = fft(y);
yf_dis = fft(y_dis);
H = yf./yf_dis;
y_rec = ifft(yf_dis.*H);
 
audiowrite('Recovered.wav', y_rec, Fs);
 
subplot(3,1,3)
plot(y_rec)
ylabel('y-rec[n]');
xlabel('n');
title("Recovered Wave");
 
%Part d)
mse = MSE(y, y_rec, 44100);
disp("MSE (Orig and Rec) = " + mse);
 
%Part e)
player_R = audioplayer(y_rec, Fs);
play(player_R);
 
function [mse] = MSE(y, y_dis, l)
    mse = 0;
    
    for k=1:l
        mse = mse + (1/l)*(y(k) - y_dis(k))^2;
    end
end
