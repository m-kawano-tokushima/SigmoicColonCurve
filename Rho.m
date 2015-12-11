% function Rho=Rho(Theta, R, RadiusCylinder, OQ, Aq, Pq, Ac)
% function Rho=Rho(Time, Theta, R, RadiusCylinder, OQ, Aq, Pq, Ac)
function Rho=Rho(Ocx, Theta, R, RadiusCylinder, OQ, Aq, Pq, Ac)
% 微小領域から電極までの距離ベクトル
% 入力：Theta＝バンドの中心角, R＝原点からバンド中心までの距離,　RadiusCylinder＝バンド半径, OQ＝原点と電極との距離
% 入力：Aq＝XY平面から点Qの角度(∠QxyOQxyz), Pq＝XY平面上のy軸と点Qの角度(∠QyzOQxyz), Ac＝XY平面から点Ocの角度(∠OcxyOOcxyz)
% 出力：微小領域から電極までの距離ベクトル
ol=OL(Theta, RadiusCylinder, R);
% Rho=sqrt(ol.^2+OQ.^2-2.*ol.*OQ.*cos(Phi_c(Theta, RadiusCylinder, R)-Pq).*cos(Aq-Ac));
% Rho=sqrt(ol.^2+OQ.^2-2.*ol.*OQ.*cos(Phi_c(Time, Theta, RadiusCylinder, R)-Pq).*cos(Aq-Ac));
Rho=sqrt(ol.^2+OQ.^2-2.*ol.*OQ.*cos(Phi_c(Ocx, Theta, RadiusCylinder, R)-Pq).*cos(Aq-Ac));
end