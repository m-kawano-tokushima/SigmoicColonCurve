Oc=zeros(30,2);
n=3;

% 1509182
Rcc=[8 10 9 8 12 9 4 6 9 10 13 15 17 18 13 9 12 9 10 8 13 14 9 5 2 7 11 11 15 19];
alpha=[5/6*pi 8/9*pi 0 -8/9*pi -13/18*pi -3/4*pi 1/3*pi 1/12*pi 0 -1/4*pi -1/3*pi -1/2*pi -4/9*pi -7/24*pi -1/4*pi -1/6*pi 1/9*pi 1/4*pi 1/3*pi 4/9*pi 13/24*pi 11/18*pi 2/3*pi 1/2*pi pi 7/12*pi 4/9*pi 7/12*pi 1/2*pi 1/2*pi];

Oc(:,1)=Rcc.*cos(alpha)./10;    % Ocy
Oc(:,2)=-Rcc.*sin(alpha)./10;    % Ocz

% è¨êîëÊ3à Ç≈éléÃå‹ì¸
unit=10^(n-1);
Oc=(round(Oc.*unit))./unit;