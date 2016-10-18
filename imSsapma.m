
%giriþi grayScala bir image için pixel deðerlerin Standart sapmasýný hesaplayan
%fonksiyon

function [ss] = imSsapma(v)
    %resimdeki pixel deðerlerinin ortalamasý alýnýyor
    ort = imOrt(v);
    [m,n] = size(v);
    ss = .0;
    a = .0 ;
    for i=1:m;
        for j=1:n;
           %pixel deðerlerinin ortalamadan farkýnýn karesi alýnýp
           %a deðiþkeninde toplanýyor
           a = a+((v(i,j) - ort)^2);
        end
    end
    %ve toplanan deðerler pixel sayýsýnýn 1 eksiðine bölünüp kökü alýnýyor
    ss = (a/((m*n)-1))^(1/2);
end
