%the purpose of this script is to demonstrate basic image filtering 
%   last modified 9/12/2016

I = rgb2gray(imread('roomba.jpg'));
[height,width,z1] = size(I);
info = imfinfo('roomba.jpg')
figure(1), imshow(I)
I = double(I);

%dimension needs to be an odd number in order to get a symetric mask
dimension = 11;
sigma = (dimension-1)/3;
[guassMask] = createGuassMask(dimension, sigma);

Icon = convolution(guassMask, I);
figure(2), imshow(mat2gray(Icon))