clear
clc
disp('Nama : Nadazkia')
disp('NIM  : ')
disp('======================================================')
disp('           Metode Diferensiasi Selisih Maju           ')
disp('======================================================')

disp('Diketahui:')
a=input('Batas bawah a = ');
b=input('Batas atas b = ');
h=input('h = ');
n=(b-a)/h;
sigma=0;
f = @(x) 2*x.*exp(x); %Fungsi
f_eksak = @(x) (2*x.*exp(x))+(2*exp(x)); %Turunan Pertama Eksak
f_mundur = @(x,h) (f(x+h)-f(x))/h; %Metode Selisih Tengah

disp('======================================================')
disp('i       x        f maju      f eksak      error       ')
disp('======================================================')
for i=0:n
    x=a+i*h;
    fm=f_mundur(x,h);
    fek=f_eksak(x);
    e=abs(fek-fm);
    sigma=sigma+e;
    fprintf('%d    %f    %f    %f    %f    \n', i,x,fm,fek,e)
end
rata_error= sigma/(i+1);
disp('======================================================')
fprintf('Rata-rata error = %f \n', rata_error)
