function dequantize (file)
% dequatize all the pixels in an image file
% if the value is higher than 128, then set it as a 1
% otherwise set it as a 0

img = imread(file);

xPix = size(img,1);
yPix = size(img,2);

new_img = zeros(size(img));

for x = 1:1:xPix
    for y = 1:1:yPix
        if img(x,y) >= (256/2)
            new_img(x,y) = 1;
        else
            new_img(x,y) = 0;
        end
    end
end

imshow(new_img);