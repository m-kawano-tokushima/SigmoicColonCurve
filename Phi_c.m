% function Pc=Phi_c(Theta, RadiusCylinder, R)
function Pc=Phi_c(Time, Theta, RadiusCylinder, R)
% yz平面とLの角度
% 入力：Theta＝バンドの中心角, RadiusCylinder＝バンド半径, R＝原点からバンド中心までの距離
% 出力：yz平面とLの角度

% 脱分極バンド中心のX座標
% 2D
% Ocx=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

% いきめ大腸肛門外科内科
Ocx=[-2 -3 -5 -7 -4 0 2 -2 -4 -2 0 0 0 -1 3 3 3 3 3 -1 0 0 1 1 -2 -4 -5 -7 -8 -8];

% 150803
% Ocx=[0 2 -2 -2 -3 -1 2 5 5 5 1 2 2 3 -3 -1 -2 0 0 3 3 5 2 -2 2 2 -2 -5 -2 -1];

OcAngle=atan(Ocx(Time)*10/R);    % yz平面とOcの角度

% ∠OcOL
OLAngle=acos((R.^2+OL(Theta, RadiusCylinder, R).^2-RadiusCylinder.^2)./(2.*R.*OL(Theta, RadiusCylinder, R)));

% Pc=OLAngle;
Pc=OLAngle+OcAngle;
end