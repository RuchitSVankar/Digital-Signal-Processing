clc;
clear all;
close all;

fs = 48e3;
bw = 12e3;
sf = 2^4;

lorasignal = audioread("lora_signals_neg_start.wav");
am_fm_signal = audioread("am_fm_12khz.wav");

lora_i = lorasignal(:,1);
lora_q = lorasignal(:,2);

lora_comb = lora_i + 1i*lora_q;