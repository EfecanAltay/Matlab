
%Resize-------------------------

%Resim okuma ve I de�i�kenine atama i�lemi
% I = imread('circuit.tif');
% 
% %I de�i�kenine atad���m�z resimin boyunu 1.5 kat b�y�t�p
% %J de�i�kenine at�yoruz.
% J = imresize(I,1.5);
% 
% 
% %ve iki resmi de imshow ile g�r�yoruz.
% figure, 
% imshow(I);
% figure,
% imshow(J);

%Rotate-------------------------

%Resim Okunuyor ve I de�i�kenine atan�yor. 
% I = imread('circuit.tif');
% 
% % Saatin tersi y�n�nde 20 derecelik d�nd�rme i�lemi uygulan�yor J'ye atan�yor. 
% J = imrotate(I,20,'bilinear');
% 
% %iki resimde g�steriliyor.
% figure, imshow(I)
% figure, imshow(J)

%Crop
%Resim Okunuyor
% I = imread('circuit.tif')
% %Resim Matlab�n sundu�u resim kesme program�n� �a��r�p bizim kesmek
% %istedi�imiz koordinatlar�n al�nmas�n� sa�l�yor ve kesileni J'ye at�yor.
% %J = imcrop(I);
% 
% %bu i�lemde ise kesilmek istenen noktalar ve boyut giriliyor, resim kesiliyor.
% %60 = x , 40 = y noktalar� ; 100 = geni�lik , 90 = y�kseklik
% J = imcrop(I,[60 40 100 90]);
% 
% 
% %resimde kesilen yer g�steriliyor.
% figure,
% imshow(J);

%Translate 
%Resim okunuyor ve I de�i�kenine atan�yor.
I = imread('cameraman.tif');

%I resimine x=15 , y=25 olarak kayd�rma uygulan�yor
J = imtranslate(I,[15, 25]);

%Sonuclar g�zlemleniyor.
figure;
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(J);













