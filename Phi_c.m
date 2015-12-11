% function Pc=Phi_c(Theta, RadiusCylinder, R)
% function Pc=Phi_c(Time, Theta, RadiusCylinder, R)
function Pc=Phi_c(Ocx, Theta, RadiusCylinder, R)
% yz平面とLの角度
% 入力：Theta＝バンドの中心角, RadiusCylinder＝バンド半径, R＝原点からバンド中心までの距離
% 出力：yz平面とLの角度

% 脱分極バンド中心のX座標
% 2D
% Ocx=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

% いきめ大腸肛門外科内科
% Ocx=[-2 -3 -5 -7 -4 0 2 -2 -4 -2 0 0 0 -1 3 3 3 3 3 -1 0 0 1 1 -2 -4 -5 -7 -8 -8];

% 150803
% Ocx=[0 2 -2 -2 -3 -1 2 5 5 5 1 2 2 3 -3 -1 -2 0 0 3 3 5 2 -2 2 2 -2 -5 -2 -1];

% 1509182
% Ocx=[0 -2 -3 -3 -2 2 5 4 3 1 2 3 2 0 -2 -3 1 2 -3 1 2 1 1 1 -1 -3 -8 -7 -2 -3];

% ThisOcx=Ocx(Time)*10;
% ThisOcx=100;    % テスト用

% OcAngle=asin(ThisOcx/sqrt(ThisOcx^2+R^2));    % yz平面とOcの角度
OcAngle=asin(Ocx*10/R);

% ∠OcOL
% OLAngle=asin(RadiusCylinder.*sin(Theta)./OL(Theta, RadiusCylinder, R));   % 間違い
ol=OL(Theta, RadiusCylinder, R);
OLAngle=acos((R.^2+ol.^2-RadiusCylinder.^2)./(2.*R.*ol));

% if Ocx(Time)<0
%     Pc=OLAngle-OcAngle;
% else
%     Pc=OLAngle+OcAngle;
% end

if Theta<pi
    Pc=OcAngle-OLAngle;
else
    Pc=OcAngle+OLAngle;
end
end