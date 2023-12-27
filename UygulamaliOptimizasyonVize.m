%Uygulamalı Optimizasyon vize sınavı
%Not: m dosyasını ad soyad ve öğrenci numarası olarak kaydediniz. 
%Not: Kimlik bilgilerinizi lütfen aşağıdaki ilgili yerlere yazınız.
%Öğrencinin Adı Soyadı:
%Numarası:

%Sorular
%1)Klavyeden vize ve final notları yazıldığında "Not ortalamasını" ve %"Geçti" yada "Kaldı" yazan bir program yazınız. 
%İkinci soru ile karışmaması için değişken olarak vize için v, final için f harflerini kullanınız.
%Not ortalaması: Vizenin 0.40'ı, finalin 0.60'ı toplanarak bulunur.
%Vize ve Final notları Negatif ve 100'den büyük değer yazıldığında "Yanlış bir değer yazdınız"
%uyarısını versin.
%Not ortalaması >=50 ise geçti, değilse kaldı yazsın.(20puan)
%-------Program Kodunu Buraya Yazınız-----------

%%1.Soru
v=input('Lütfen vize notunu yazınız=');
while v<0 || v>100
    fprintf('Yanlış değer yazdınız /n ')
    v=input('Lütfen geçerli vize notu yazınız=');
end
f=input('Lütfen final notunu yazınız=');
while f<0 || f>100
    fprintf('Yanlış değer yazdınız /n ');
    f=input('Lütfen geçerli final notu yazınız=')
end
ort=(v*0.40)+(f*0.60);
if ort >=50
    fprintf('Geçti /n ' , ort)
else
    fprintf('Kaldı /n ' , ort)
end






fprintf('Program durduruldu. Devam etmek için entera basın.\n');
pause;
%---------------------------------------
%2.f(x)=30*x.^2-50*x+8 fonksiyonunun
%a)Fonksiyonunun grafiğini çiziniz.(20p)
%b)Optimizasyon fonksiyonuyla optimize ediniz.(x için sınırları 0 ve 40
%alınız)(15p)
%c)Türevini alıp x deðerini bulunuz.(15p)
%-------Program Kodunu Buraya Yazınız-----------

%%2.soru
%a)
x=1:100;
y=(30*x.^2-50*x+8);
plot(x,y)

%b)
syms x 
y=(30*x.^2-50*x+8);
fplot(y)
[x,fval,exitfilag]=fminbnd('30*x.^2-50*x+8',0,40)

%c
syms x 
y=(30*x.^2-50*x+8);
t1=diff(y,x)
cozum=double(solve(t1==0,x))
t2=diff(t1,x)

%2.türevle eğimin değişimini buluruz






fprintf('Program durduruldu. Devam etmek için entera basın.\n');
pause;
%-----------------------------------------
%-------Program Kodunu Buraya Yazınız-----------
%b)





fprintf('Program durduruldu. Devam etmek için entera basın.\n');
pause;
%-----------------------------------------
%-------Program Kodunu Buraya Yazınız-----------
%c)






%-----------------------------------------
% 3) 2. Soruyu Optimization Toolbox ile çözüp aşağıdaki soruları cevaplayınız.
% a) Fonksiyon kaç iterasyonda optimuma ulaşmıştır? (5p)
% Cevap:
% b) Optimizasyon işlemi sırasında hangi algoritmalar (procedure kısmında yazanlar) kullanılmıştır?(10p)
% Cevap:

%%3.Soru
%a) 8 iterasyonla maksimuma ulaşmıştır
%  b)Func-count     x          f(x)
%     1         15.2786       6247.17
%     2         24.7214       17106.3
%     3         9.44272       2210.81
%     4         5.83592       737.943
%     5          3.6068        217.93
%     6        0.833333      -12.8333
%     7        0.833367      -12.8333
%     8          0.8333      -12.8333

% 4) Matlab programında optimizasyon uygulayacağınız fonksiyon maksimizasyon yönlü ise (optimum noktası maksimum nokta ise) hangi
% işlemleri uygularsınız? Neden?(15p)

%%4.Soru
%% MATLAB daima sadece minimizasyon işlemi yapar.
%% Maksimizasyon işlemi yapmak istersek -1 ile fonksiyonu çarparız işaret değiştiririz
%% Fonksiyonumuz min ise bu işlemi uygularız.
% 
%
%

