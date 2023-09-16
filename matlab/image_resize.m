b=imread('Project\images\test2\sample.bmp');

fid = imresize(b,[512,768]);

imwrite(fid,'Project\images\test2\input.bmp');
disp('Image Resized');disp(' ');