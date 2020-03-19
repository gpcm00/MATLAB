function reduce_quant (file)
% dequantize rgb pixels of an image

% original pic
img = imread(file);

% mid point in 8-bits
comp = 256/2;

% get the size of the pic
yPix = size(img,1);
xPix = size(img,2);

% allocate enough space for the new pic
new_img = zeros(size(img));

% if the pixel value is higher than comp, set the value to 1 else set it to
% 0. Do it for all pixels
for y = 1:1:yPix
    for x = 1:1:xPix
        for i = 1:1:3
            if img(y,x,i) >= comp
                new_img(y,x,i) = 1;
            else
                new_img(y,x,i) = 0;
            end
        end
    end
end

imshow(new_img);