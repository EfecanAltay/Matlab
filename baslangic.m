

%%Efecan Altay G�r�nt� ��leme 

image = imread('res.jpg'); % resim okunuyor
imshow(image); % okunan resim showlan�yor

image = rgb2gray(image);%historamda g�z�kmesi i�in gri resim olarak d�n��t�rme uygulad�m

imwrite(image,'C:\Users\Efecan\Matlab�al��mlar�m\yeni_g_res.png');%% gri resmi kaydediyoruz 

figure
imshow(image);  %% gri resime d�n���m� g�rmek i�in ekrana yans�tt�m

whos   %% matlab'a giri� yapt���m resimler

figure
imhist(image);   %% gri resmin histogram�n� ekrana yans�tt�m

image2 = histeq(image); %% gri resmin kontrast ayar�n� y�kselttim
imshow(image2); %% kontrast ayar�n� y�kseltti�im resmi ekraba yans�tt�m

imhist(image2); %% kontrast ayar� y�ksek olan resmin histogram�n� yans�tt�m ve eskisiyle kar��la�t�rd�m

imwrite(image2,'C:\Users\Efecan\Matlab�al��mlar�m\yeni_kg_res.png'); %% en son olarak gri tonunda kontrast ayar�n� y�kseltti�im resimi dosyaya kaydettim

imfinfo('yeni_kg_res.png') %% bu kodla da dosyadaki resmin bilgilerini ��renebiliriz
