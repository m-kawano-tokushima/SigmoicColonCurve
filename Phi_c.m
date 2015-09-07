function Pc=Phi_c(Time, Theta, RadiusCylinder, R)
% yz平面とLの角度
% 入力：Theta＝バンドの中心角, RadiusCylinder＝バンド半径, R＝原点からバンド中心までの距離
% 出力：yz平面とLの角度

% 脱分極バンド中心のX座標
% 150803
Ocx=[-0.5 1 2 0.8 2.1 0.2 -0.8 -2 -2.5 -2 -1 -0.9 -0.8 -1 0 4.5 2.3 0.7 1 -1 -2 -2.4 -0.5 1.3 -0.5 -0.4 0 3.5 5 1.6];

OcAngle=atan(Ocx(Time)*10/R);    % yz平面とOcの角度

% ∠OcOL
OLAngle=acos((R.^2+OL(Theta, RadiusCylinder, R).^2-RadiusCylinder.^2)./(2.*R.*OL(Theta, RadiusCylinder, R)));
Pc=OLAngle+OcAngle;
end