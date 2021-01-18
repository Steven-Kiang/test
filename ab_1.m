%% 一.转化为二值图像
% 制作@：自动化1804姜铭宇20181408
clc;clear
I = imread('实验图片/ab.jpg');
[m,n,d] = size(I);
figure;
subplot(121);imshow(I);title('原始图像');
I = rgb2gray(I);
subplot(122);imshow(I);title('灰度图像');

figure;
imhist(I);

figure;
sh = graythresh(I);
I = im2bw(I,sh);
se=strel('disk',5);% 半径为5的平坦型圆盘结构
fo = imopen(I,se);
foc = imclose(fo,se);%先开后闭运算
fc = imclose(I,se);
fco = imopen(fc,se); %先闭后开运算
imshow(fco);title('二值图像');