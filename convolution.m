cb = imread('yeni_g_res.png');
cb = im2double(cb);

ec = [-1 -1 -1; 1 0 -1; 1 1 -1];

out = conv2(cb,ec);

imshow(out)