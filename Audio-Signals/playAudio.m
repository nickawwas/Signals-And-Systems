% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 5 - PreLab 1a,b,c
% Load and Play Audio Files

clc;
clear all;
close all;
 
[y, Fs] = audioread('lab_5_Audio_1.wav');
player_O = audioplayer(y, Fs);      %Original
player_Q = audioplayer(0.25*y, Fs); %Quarter Y
player_F = audioplayer(4*y, Fs);    %Four Times Y
player_H = audioplayer(y, Fs/2);    %Half Fs
player_T = audioplayer(y, 2*Fs);    %Twice Fs

play(player_O);
play(player_Q);
play(player_F);
play(player_H);
play(player_T);
