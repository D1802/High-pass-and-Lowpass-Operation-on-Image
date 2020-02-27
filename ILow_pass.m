%CREATED BY DARPAN VITHAL SARODE
%BT17ECE056
%LOWPASS FILTER

clc;
clear all;
close all;
I=imread('Lenna.jpg');
RGB=rgb2gray(I);

%lowpass filter
D=ones(10,1)/9;
f=filter2(D,RGB,'same');

%Highpass filter
H=[0,-1,0;-1,4,-1;0,-1,0];
f2=filter2(H,RGB,'same');

figure('Name','lowapss filter');
subplot(211);
imshow(RGB); title('Orignal Image');

subplot(212);
imshow(f/255); title('Lowpass filter image');

figure('Name','Highpass filter');
subplot(211);
imshow(RGB); title('Orignal Image');

subplot(212);
imshow(f2/255); title('Highpass filter filter image');
