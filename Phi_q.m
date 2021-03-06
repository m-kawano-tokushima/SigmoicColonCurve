function Pq=Phi_q(R, Ac, OQ, Qx, Qy, Qz)
% ∠OcOQ
% 入力：R＝原点からバンド中心までの距離, Ac＝∠OsOOc, OQ＝原点と電極との距離, Qx＝電極のX座標, Qy＝電極のY座標, Qz＝電極のZ座標
% 出力：∠OcOQ

Ocx=-10;            % 脱分極バンド中心のX座標
Ocy=R.*cos(Ac);     % 脱分極バンド中心のY座標
Ocz=R.*sin(Ac);     % 脱分極バンド中心のZ座標
Ocq=sqrt((Qx-Ocx).^2+(Qy-Ocy).^2+(Qz-Ocz).^2);    % 脱分極バンドの中心から任意点までの距離

Pq=acos((R.^2+OQ.^2-Ocq.^2)./(2.*R.*OQ));
end