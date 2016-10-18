%checkerboard adýnda hazýr resim alýnýyor
cb = checkerboard;
%imshow(cb);

%Resmin Mekansaol referans bilgileri alýnýyor.Bu bilgiler transform
%iþlemlerine yardýmcý bilgilerdir.
Rcb = imref2d(size(cb));

% 3x3 lük bir A matrisi oluþturuluyor
A=[1 0 0 ;0 1 0;20 20 1];

%3x3 lük matris Geometrik transform objesine dönüþtürülüyor
tform = affine2d(A);

%resimlerin transform bilgilerini deðiþtirmemizi saðlar yukarýda tform
%deðiþkenimizde yeni transform bilgileri olarak belirlemiþtik ,cb deðiþkeni
%olarak aldýðýmýz resimimize tform bilgilerini imwarp komutu ile yeni
%resmimizi out olarak bilgilerimizi ise Rout olarak alýyoruz

[out,Rout] = imwarp(cb,tform);

%subplot fonksiyonu show ekranýnda gösterilecek resimleri,grafikleri
%birlikte bölünerek gösterilmesini saðlar subplot(satýr,sütun,index)

figure;
subplot(2,1,1);
imshow(cb,Rcb);
subplot(2,1,2);
imshow(out,Rout);

Rout = Rcb ;

%Rout uzay bilgi parametlerinin uzay limitinin X ve y sini arttýrdýk
%daha önce 80x80 2d uzayýnda bulunan resmimiz 100x100 uzayýnda olmuþ oldu. 
Rout.XWorldLimits(2) = Rout.XWorldLimits(2)+20;
Rout.YWorldLimits(2) = Rout.YWorldLimits(2)+20;

%burada imwarp komutunu daha geniþleterek cb resmimize tform Geometrik
%transform bir 'OutputView' parametresi ile yukarýda deðiþtirilen Rout
%parametreleriyle yeni resim ve geometrik transform bilgisiyle çýkmýþtýr.
[out,Rout] = imwarp(cb,tform,'OutputView',Rout);

%son olarak deðiþiklikler gözleniyor
figure, subplot(1,2,1);
imshow(cb,Rcb);
subplot(1,2,2);
imshow(out,Rout)
