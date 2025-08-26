% Proje 2: Fonksiyon Çizici
% Kullanıcıdan fonksiyon seçerek grafiğini çizer

disp('Çizmek istediğiniz fonksiyonu seçin:');
disp('1: sin(x)');
disp('2: cos(x)');
disp('3: exp(x)');

secim = input('Seçiminiz (1-3): ');
x = linspace(-10,10,500);

switch secim
    case 1
        y = sin(x);
        plot(x,y,'b','LineWidth',1.5);
        funcName = 'sin(x)';
    case 2
        y = cos(x);
        plot(x,y,'r','LineWidth',1.5);
        funcName = 'cos(x)';
    case 3
        y = exp(x);
        plot(x,y,'g','LineWidth',1.5);
        funcName = 'exp(x)';
    otherwise
        error('Geçersiz seçim!');
 
end

grid on;
xlabel('x'); ylabel('y');
title(['Fonksiyon Grafiği: ' funcName]);
legend(funcName);
 