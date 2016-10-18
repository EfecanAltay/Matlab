
%giriþi grayScala bir image için pixel deðerlerin varyansýný hesaplayan
%fonksiyon

function [ varyans ] = imVaryans( grayIm )
    %varyans Standart Sapmanýn Karesi olduðundan fonksiyon devreye girmiþ
    varyans = imSsapma(grayIm)^2
end

