%% һ.ת��Ϊ��ֵͼ��
% ����@���Զ���1804������20181408
clc;clear
I = imread('ʵ��ͼƬ/ab.jpg');
[m,n,d] = size(I);
figure;
subplot(121);imshow(I);title('ԭʼͼ��');
I = rgb2gray(I);
subplot(122);imshow(I);title('�Ҷ�ͼ��');

figure;
imhist(I);

figure;
sh = graythresh(I);
I = im2bw(I,sh);
se=strel('disk',5);% �뾶Ϊ5��ƽ̹��Բ�̽ṹ
fo = imopen(I,se);
foc = imclose(fo,se);%�ȿ��������
fc = imclose(I,se);
fco = imopen(fc,se); %�ȱպ�����
imshow(fco);title('��ֵͼ��');