%Bir resmin ortalamas�,standart sapmas�n� ve varyans�n� hesaplayan fonk.yaz
cb = imread('yeni_g_res.png');

cb = im2double(cb);

a = imOrt(cb);
b = imSsapma(cb);
c = imVaryans(cb); 

%buda matlabta kullan�lan haz�r fonksiyonlar
e = mean2(cb); %ortalama hesab�
f = std2(cb);  %standart sapma hesab�
g = std2(cb)^2; % varyans hesab�
%sa�da g�r�ld��� gibi f=b , e=a , c=g de�erleri e�it oldu�undan form�l do�rudur.