function Ac=Alpha(Time, Frequency)
% ∠OsOOc(Y軸とバンド中心との角度(tan(αc)))
% 入力：Time＝時間, Frequency＝周波数, R＝原点からバンド中心までの距離, Length＝Y軸からバンド中心までの弧の長さ
% 出力：∠OsOOc

% v=7*pi/4/(60/Frequency);  % 脱分極バンドの位置
% Ac=v.*rem(Time,30)-5*pi/4;   % 速度×時間(現在の時間/周期 のあまり)

% 手動 (thetaは -pi～pi にすること)

% 基本形・最短
% theta=5*pi/4:-7*pi/4/30:-pi/2;

% Cedars-Sinai
% theta=[-3*pi/4 -5*pi/6 -11*pi/12 pi 11*pi/12 5*pi/6 3*pi/4 2*pi/3 7*pi/12 pi/2 5*pi/12 pi/3 pi/4 pi/6 pi/12 0 -pi/12 -pi/3 -5*pi/12 -pi 2*pi/3 5*pi/12 -3*pi/4 -2*pi/3 -5*pi/12 pi/2 pi/4 pi/16 -5*pi/12 -pi/2];

% UniversityHospitalRadiologyGroup
% theta=[-3*pi/4 -11*pi/12 5*pi/6 2*pi/3 7*pi/12 7*pi/9 -5*pi/6 -2*pi/3 -pi/2 -pi/6 -pi/18 pi/18 pi/3 3*pi/8 17*pi/48 35*pi/96 11*pi/48 pi/12 -pi/6 -5*pi/18 -4*pi/9 -14*pi/27 -5*pi/12 -13*pi/27 -7*pi/12 -pi/2 -5*pi/18 -5*pi/12 -7*pi/12 -pi/2];

% いきめ大腸肛門外科内科
% theta=[-14*pi/27 -3*pi/4 pi 13*pi/18 11*pi/18 25*pi/48 5*pi/12 23*pi/48 13*pi/18 -5*pi/6 -pi/2 pi/6 pi/18 pi/12 pi/6 11*pi/36 13*pi/36 5*pi/18 pi/4 -pi/18 -pi/27 -pi/6 -5*pi/18 -5*pi/12 -7*pi/18 -pi/4 -4*pi/9 -19*pi/36 -5*pi/12 -pi/2];

% 150803
theta=[-5/6*pi -3/4*pi -8/9*pi 17/18*pi 23/30*pi 7/10*pi 4/5*pi 13/15*pi 7/18*pi 5/12*pi 1/3*pi 1/4*pi 1/4*pi 13/36*pi 3/10*pi 1/6*pi 2/9*pi 0 -1/6*pi -1/12*pi -1/4*pi -1/3*pi -4/9*pi -2/5*pi -11/18*pi -5/9*pi -1/2*pi -5/9*pi -1/2*pi -1/2*pi];

Ac=theta(Time);
end