
%giri�i grayScala bir image i�in pixel de�erlerin ortalamas�n� hesaplayan
%fonksiyon

function [ort] = imOrt(v)
    %pixel de�erlerinin sat�r ve s�tun boyutlar� m,n olarak at�lmakta
    [m,n] = size(v); 
    toplam = .0;
    for i=1:m;
        for j=1:n;
            toplam = toplam + v(i,j); %t�m pixel de�erleri toplanmakta
        end
    end
    %toplanan de�erler ,pixel say�s�na b�l�n�p ortalamas�na ula��lmakta
    ort = toplam/(m*n); 
end