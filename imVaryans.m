
%giri�i grayScala bir image i�in pixel de�erlerin varyans�n� hesaplayan
%fonksiyon

function [ varyans ] = imVaryans( grayIm )
    %varyans Standart Sapman�n Karesi oldu�undan fonksiyon devreye girmi�
    varyans = imSsapma(grayIm)^2
end

