function OL=OL(Theta, RadiusCylinder, R)
% 原点から微小領域までの距離
% 入力：Theta＝バンドの中心角, RadiusCylinder＝バンド半径, R＝原点からバンド中心までの距離
% 出力：原点から微小領域までの距離
OL=sqrt(R.^2+RadiusCylinder.^2-2.*R.*RadiusCylinder.*cos(Theta));
end