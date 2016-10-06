

%%Efecan Altay Görüntü Ýþleme 

image = imread('res.jpg'); % resim okunuyor
imshow(image); % okunan resim showlanýyor

image = rgb2gray(image);%historamda gözükmesi için gri resim olarak dönüþtürme uyguladým

imwrite(image,'C:\Users\Efecan\MatlabÇalýþmlarým\yeni_g_res.png');%% gri resmi kaydediyoruz 

figure
imshow(image);  %% gri resime dönüþümü görmek için ekrana yansýttým

whos   %% matlab'a giriþ yaptýðým resimler

figure
imhist(image);   %% gri resmin histogramýný ekrana yansýttým

image2 = histeq(image); %% gri resmin kontrast ayarýný yükselttim
imshow(image2); %% kontrast ayarýný yükselttiðim resmi ekraba yansýttým

imhist(image2); %% kontrast ayarý yüksek olan resmin histogramýný yansýttým ve eskisiyle karþýlaþtýrdým

imwrite(image2,'C:\Users\Efecan\MatlabÇalýþmlarým\yeni_kg_res.png'); %% en son olarak gri tonunda kontrast ayarýný yükselttiðim resimi dosyaya kaydettim

imfinfo('yeni_kg_res.png') %% bu kodla da dosyadaki resmin bilgilerini öðrenebiliriz
