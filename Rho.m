function Rho=Rho(Theta, R, RadiusCylinder, OQ, Alpha_Q, Pq, Ac)
% 微小領域から電極までの距離ベクトル
% 入力：Theta＝バンドの中心角, R＝原点からバンド中心までの距離,　RadiusCylinder＝バンド半径, OQ＝原点と電極との距離
% 入力：Alpha_Q＝XY平面から電極までの角度, Pq＝∠OcOQ, Ac＝∠OsOOc
% 出力：微小領域から電極までの距離ベクトル

Rho=sqrt(OL(Theta, RadiusCylinder, R).^2+OQ.^2-2.*OL(Theta, RadiusCylinder, R).*OQ.*cos(Phi_c(Theta, RadiusCylinder, R)-Pq).*cos(Alpha_Q-Ac));
end