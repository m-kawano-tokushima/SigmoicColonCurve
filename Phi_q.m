% function Pq=Phi_q(R, Ac, OQ, Qx, Qy, Qz)
function Pq=Phi_q(Time, R, Ac, OQ, Qx, Qy, Qz)
% ∠OcOQ
% 入力：R＝原点からバンド中心までの距離, Ac＝∠OsOOc, OQ＝原点と電極との距離, Qx＝電極のX座標, Qy＝電極のY座標, Qz＝電極のZ座標
% 出力：∠OcOQ

% 脱分極バンド中心のX座標
% 2D
% Ocx=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

% いきめ大腸肛門外科内科
Ocx=[-2 -3 -5 -7 -4 0 2 -2 -4 -2 0 0 0 -1 3 3 3 3 3 -1 0 0 1 1 -2 -4 -5 -7 -8 -8];

% 150803
% Ocx=[0 2 -2 -2 -3 -1 2 5 5 5 1 2 2 3 -3 -1 -2 0 0 3 3 5 2 -2 2 2 -2 -5 -2 -1];

% Ocx=0;              % 脱分極バンド中心のX座標
Ocy=R.*cos(Ac);     % 脱分極バンド中心のY座標
Ocz=R.*sin(Ac);     % 脱分極バンド中心のZ座標

% Ocq=sqrt((Qx-Ocx*10).^2+(Qy-Ocy).^2+(Qz-Ocz).^2);    % 脱分極バンドの中心から任意点までの距離
Ocq=sqrt((Qx-Ocx(Time)*10).^2+(Qy-Ocy).^2+(Qz-Ocz).^2);    % 脱分極バンドの中心から任意点までの距離

Pq=acos((R.^2+OQ.^2-Ocq.^2)./(2.*R.*OQ));
end