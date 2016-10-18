% MATLAB’da 8 bitlik bir I imgesi açýp, 
% imgenin her bir pikseline eriþerek 
% etrafýndan nxn boyutlu bir blok alýn 
% ve bloðun standart sapmasýný hesaplayýn.

% n = 3 olarak aldým
%cb = checkerboard;
cb = imread('yeni_g_res.png'); 

%sSM = cb(1:end/2,1:end/2); %StandartSapmaMatrisi sSM
%sSM = 1 ;
cb = im2double(cb);
[a,b] = size(cb);

cl = cb * 2;
for i=1:a-1;
    for j=1:b-1;
        if( i == 1 && j == 1)
          sSM = cb(j:j+1,i:i+1);
           cl(i,j) = std2(sSM);
        elseif( j == 1 && (i > 1 && i < a-1))
          sSM = cb(i-1:i+1 ,j:j+1);
           cl(i,j) = std2(sSM);
        elseif(i == 1 && (j > 1 && j < b-1))
          sSM = cb(i:i+1 ,j-1:j+1);
           cl(i,j) = std2(sSM);
        elseif(i == a-1 && j == b-1);
          sSM = cb(i-1:i ,j-1:j);
          	cl(i,j) = std2(sSM);
        elseif(i == a-1 && (j > 1 && j < b-1));
          sSM = cb(i-1:i ,j-1:j+1);
           cl(i,j) = std2(sSM);
        elseif(j == b-1 && (i > 1 && i < a-1))
          sSM = cb(i-1:i+1,j-1:j);
            cl(i,j) = std2(sSM);
        else
          sSM = cb(i:i+1,j:j+1);
          	cl(i,j) = std2(sSM);
        end
    end
end

%iþlemler sonrasý görüntüleme
figure;
subplot(1,2,1);
imshow(cb);
subplot(1,2,2);
imshow(cl);
imwrite(cl,'yeni_StandartSapmasý_alýnmýs_resim.png');