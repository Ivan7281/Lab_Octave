photo = imread('D:\Laboratories_programming\Lab_Octave\Lab7\eng2.jpg');

photo_gau = imnoise(photo, 'gaussian', 0 , 0.1);
photo_sal = imnoise(photo, 'salt & pepper', 0.2);
photo_poiss = imnoise(photo, 'poisson');
photo_spec = imnoise(photo, 'speckle', 0.1);

photo_gau_filt = imfilter(photo_gau, fspecial('average', 3));
photo_sal_filt = imfilter(photo_sal, fspecial('average', 3));
photo_poiss_filt = imfilter(photo_poiss, fspecial('average', 3));
photo_spec_filt = imfilter(photo_spec, fspecial('average', 3));

photo_gau_imshar =  imsharpen(photo_gau);
photo_sal_imshar =  imsharpen(photo_sal);
photo_poiss_imshar =  imsharpen(photo_poiss);
photo_spec_imshar =  imsharpen(photo_spec);

imshow(photo_gau);


