photo = imread('D:\Laboratories_programming\Lab_Octave\Lab7\eng2.jpg');
size(photo)
pkg load image
photo_gr = rgb2gray(photo);
photo_bw = im2bw(photo, 0.5);
imwrite(photo_gr, 'eng2_gr.jpg', 'jpeg');
imwrite(photo_bw, 'eng2_bw.gif', 'gif');

subplot(1, 3, 1)
imshow(photo)
title('кольорового')

subplot(1, 3, 2)
imshow(photo_gr)
title('напівтонового')

subplot(1, 3, 3)
imshow(photo_bw)
title('двограда-ційного')

