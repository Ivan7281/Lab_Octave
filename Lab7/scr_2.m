photo = imread('D:\Laboratories_programming\Lab_Octave\Lab7\logo_SA.png');
photo_system = imcrop(photo, [90 220 220 45]);
photo_124 = imcrop(photo, [200 270 100 90]);

figure;
subplot(3, 1, 1)
imshow(photo)
title('logo_SA')

subplot(3, 1, 2)
imshow(photo_system)
title('logo_SA system')

subplot(3, 1, 3)
imshow(photo_124)
title('logo_SA 124')
