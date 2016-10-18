
%giri�i grayScala bir image i�in pixel de�erlerin Standart sapmas�n� hesaplayan
%fonksiyon

function [ss] = imSsapma(v)
    %resimdeki pixel de�erlerinin ortalamas� al�n�yor
    ort = imOrt(v);
    [m,n] = size(v);
    ss = .0;
    a = .0 ;
    for i=1:m;
        for j=1:n;
           %pixel de�erlerinin ortalamadan fark�n�n karesi al�n�p
           %a de�i�keninde toplan�yor
           a = a+((v(i,j) - ort)^2);
        end
    end
    %ve toplanan de�erler pixel say�s�n�n 1 eksi�ine b�l�n�p k�k� al�n�yor
    ss = (a/((m*n)-1))^(1/2);
end
