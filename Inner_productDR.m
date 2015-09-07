function Ip=Inner_productDR(Time, Theta, R, RadiusCylinder, OQ, Pq, Alpha_Q, Ac)
% D×Rhoのコサイン(密度ベクトルと距離ベクトルの内積)
% 入力：Theta＝バンドの中心角, R＝原点からバンド中心までの距離,　RadiusCylinder＝バンド半径, OQ＝原点と電極との距離
% 入力：Pq＝∠OcOQ, Alpha_Q＝XY平面から電極までの角度, Ac＝∠OsOOc
% 出力：D×Rho
Ip=-((OL(Theta, RadiusCylinder, R).*tan(Alpha_Q)).^2+Rho(Time, Theta, R, RadiusCylinder, OQ, Alpha_Q, Pq, Ac).^2-OQ.^2+2.*OQ.*OL(Theta, RadiusCylinder, R).*cos(Phi_c(Time, Theta, RadiusCylinder, R)-Pq))./(2.*OL(Theta, RadiusCylinder, R).*tan(Alpha_Q).*Rho(Time, Theta, R, RadiusCylinder, OQ, Alpha_Q, Pq, Ac));
end