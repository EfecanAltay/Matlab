
%Resize-------------------------

%Resim okuma ve I deðiþkenine atama iþlemi
% I = imread('circuit.tif');
% 
% %I deðiþkenine atadýðýmýz resimin boyunu 1.5 kat büyütüp
% %J deðiþkenine atýyoruz.
% J = imresize(I,1.5);
% 
% 
% %ve iki resmi de imshow ile görüyoruz.
% figure, 
% imshow(I);
% figure,
% imshow(J);

%Rotate-------------------------

%Resim Okunuyor ve I deðiþkenine atanýyor. 
% I = imread('circuit.tif');
% 
% % Saatin tersi yönünde 20 derecelik döndürme iþlemi uygulanýyor J'ye atanýyor. 
% J = imrotate(I,20,'bilinear');
% 
% %iki resimde gösteriliyor.
% figure, imshow(I)
% figure, imshow(J)

%Crop
%Resim Okunuyor
% I = imread('circuit.tif')
% %Resim Matlabýn sunduðu resim kesme programýný çaðýrýp bizim kesmek
% %istediðimiz koordinatlarýn alýnmasýný saðlýyor ve kesileni J'ye atýyor.
% %J = imcrop(I);
% 
% %bu iþlemde ise kesilmek istenen noktalar ve boyut giriliyor, resim kesiliyor.
% %60 = x , 40 = y noktalarý ; 100 = geniþlik , 90 = yükseklik
% J = imcrop(I,[60 40 100 90]);
% 
% 
% %resimde kesilen yer gösteriliyor.
% figure,
% imshow(J);

%Translate 
%Resim okunuyor ve I deðiþkenine atanýyor.
I = imread('cameraman.tif');

%I resimine x=15 , y=25 olarak kaydýrma uygulanýyor
J = imtranslate(I,[15, 25]);

%Sonuclar gözlemleniyor.
figure;
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(J);













