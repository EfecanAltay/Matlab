
%giriþi grayScala bir image için pixel deðerlerin ortalamasýný hesaplayan
%fonksiyon

function [ort] = imOrt(v)
    %pixel deðerlerinin satýr ve sütun boyutlarý m,n olarak atýlmakta
    [m,n] = size(v); 
    toplam = .0;
    for i=1:m;
        for j=1:n;
            toplam = toplam + v(i,j); %tüm pixel deðerleri toplanmakta
        end
    end
    %toplanan deðerler ,pixel sayýsýna bölünüp ortalamasýna ulaþýlmakta
    ort = toplam/(m*n); 
end