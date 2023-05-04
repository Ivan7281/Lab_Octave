photo = imread('D:\Laboratories_programming\Lab_Octave\Lab8\Vombatus_ursinus_-Maria_Island_National_Park.jpg');

photo_gau = imnoise(photo, 'gaussian', 0 , 0.1);
photo_sal = imnoise(photo, 'salt & pepper', 0.2);
photo_poiss = imnoise(photo, 'poisson');
photo_spec = imnoise(photo, 'speckle', 0.1);
photo_imc = imcrop(photo, [290 220 220 450]);

photo_gau_filt = imfilter(photo_gau, fspecial('average', 3));
photo_sal_filt = imfilter(photo_sal, fspecial('average', 3));
photo_poiss_filt = imfilter(photo_poiss, fspecial('average', 3));
photo_spec_filt = imfilter(photo_spec, fspecial('average', 3));

figure;
imshow(photo_imc)

figure;
subplot(4, 2, 1)
imshow(photo_gau)
title('гаусівський шум')

subplot(4, 2, 2)
imshow(photo_sal)
title('імпульсний шум')

subplot(4, 2, 3)
imshow(photo_poiss)
title('пуасонівський шум')

subplot(4, 2, 4)
imshow(photo_spec)
title('мультиплікативний шум')

subplot(4, 2, 5)
imshow(photo_gau_filt)
title('Відфільтрований гаусівський шум')

subplot(4, 2, 6)
imshow(photo_sal_filt)
title('Відфільтрований імпульсний шум')

subplot(4, 2, 7)
imshow(photo_poiss_filt)
title('Відфільтрований пуасонівський шум')

subplot(4, 2, 8)
imshow(photo_spec_filt)
title('Відфільтрований мультиплікативний шум')


