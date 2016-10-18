%Bir resmin ortalamasý,standart sapmasýný ve varyansýný hesaplayan fonk.yaz
cb = imread('yeni_g_res.png');

cb = im2double(cb);

a = imOrt(cb);
b = imSsapma(cb);
c = imVaryans(cb); 

%buda matlabta kullanýlan hazýr fonksiyonlar
e = mean2(cb); %ortalama hesabý
f = std2(cb);  %standart sapma hesabý
g = std2(cb)^2; % varyans hesabý
%saðda görüldüðü gibi f=b , e=a , c=g deðerleri eþit olduðundan formül doðrudur.