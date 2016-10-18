%checkerboard ad�nda haz�r resim al�n�yor
cb = checkerboard;
%imshow(cb);

%Resmin Mekansaol referans bilgileri al�n�yor.Bu bilgiler transform
%i�lemlerine yard�mc� bilgilerdir.
Rcb = imref2d(size(cb));

% 3x3 l�k bir A matrisi olu�turuluyor
A=[1 0 0 ;0 1 0;20 20 1];

%3x3 l�k matris Geometrik transform objesine d�n��t�r�l�yor
tform = affine2d(A);

%resimlerin transform bilgilerini de�i�tirmemizi sa�lar yukar�da tform
%de�i�kenimizde yeni transform bilgileri olarak belirlemi�tik ,cb de�i�keni
%olarak ald���m�z resimimize tform bilgilerini imwarp komutu ile yeni
%resmimizi out olarak bilgilerimizi ise Rout olarak al�yoruz

[out,Rout] = imwarp(cb,tform);

%subplot fonksiyonu show ekran�nda g�sterilecek resimleri,grafikleri
%birlikte b�l�nerek g�sterilmesini sa�lar subplot(sat�r,s�tun,index)

figure;
subplot(2,1,1);
imshow(cb,Rcb);
subplot(2,1,2);
imshow(out,Rout);

Rout = Rcb ;

%Rout uzay bilgi parametlerinin uzay limitinin X ve y sini artt�rd�k
%daha �nce 80x80 2d uzay�nda bulunan resmimiz 100x100 uzay�nda olmu� oldu. 
Rout.XWorldLimits(2) = Rout.XWorldLimits(2)+20;
Rout.YWorldLimits(2) = Rout.YWorldLimits(2)+20;

%burada imwarp komutunu daha geni�leterek cb resmimize tform Geometrik
%transform bir 'OutputView' parametresi ile yukar�da de�i�tirilen Rout
%parametreleriyle yeni resim ve geometrik transform bilgisiyle ��km��t�r.
[out,Rout] = imwarp(cb,tform,'OutputView',Rout);

%son olarak de�i�iklikler g�zleniyor
figure, subplot(1,2,1);
imshow(cb,Rcb);
subplot(1,2,2);
imshow(out,Rout)
