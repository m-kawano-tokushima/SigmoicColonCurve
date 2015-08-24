function Pc=Phi_c(Theta, RadiusCylinder, R)
% yz平面とLの角度
% 入力：Theta＝バンドの中心角, RadiusCylinder＝バンド半径, R＝原点からバンド中心までの距離
% 出力：yz平面とLの角度

Ocx=-10;                % 脱分極バンド中心のX座標
OcAngle=atan(Ocx/R);    % yz平面とOcの角度

% ∠OcOL
OLAngle=acos((R.^2+OL(Theta, RadiusCylinder, R).^2-RadiusCylinder.^2)./(2.*R.*OL(Theta, RadiusCylinder, R)));
Pc=OLAngle+OcAngle;
end