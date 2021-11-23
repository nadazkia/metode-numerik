clear
clc
disp('Nama : Nadazkia')
% disp('NIM  : ')
disp('======================================================')
disp('          Metode Diferensiasi Selisih Tengah          ')
disp('======================================================')

disp('Diketahui:')
a=input('Batas bawah a = ');
b=input('Batas atas b = ');
h=input('h = ');
n=(b-a)/h;
sigma=0;
f = @(x) 2*x.*exp(x); % Fungsi
f_eksak = @(x) (2*x.*exp(x))+(2*exp(x)); % Turunan Pertama
f_tengah = @(x,h) (f(x+h)-f(x-h))/(2*h); % Metode Selisih Tengah

disp('======================================================')
disp('i       x        f tengah      f eksak      error     ')
disp('======================================================')
for i=0:n
    x=a+i*h;
    ft=f_tengah(x,h);
    fek=f_eksak(x);
    e=abs(fek-ft);
    sigma=sigma+e;
    fprintf('% d    % f    % f    % f    % f    \n', i,x,ft,fek,e)
end
rata_error= sigma/(i+1);
disp('======================================================')
fprintf('Rata-rata error = % f \n', rata_error)
