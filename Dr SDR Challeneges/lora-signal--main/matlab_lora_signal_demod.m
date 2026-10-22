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

% Normalizing the Signal

lora_comb_norm = lora_comb ./ max(abs(lora_comb));

% Calculate Instantaneous Frequency

phase = unwrap(angle(lora_comb_norm));
instantaneousFrequency = [0; diff(phase)] * fs / (2*pi);
