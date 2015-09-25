function V=SigmoidColonCurve(Time, Qx, Qy, Qz, CI)

Theta=2*pi;
Frequency=2;    % ���g���F2cpm
Delta=0.00011*(10^3);  % �o���h���F0.00011m
Eps=2.213545.*10.^(-4);  % �U�d���F2.213545.*10.^(-4)C.^2/(Nm.^2)
Rcb=0.0375*(10^3); % �~���̊���a�F0.0375m

time = rem(Time,30)+1;
% Rcc(���_����o���h���S�܂ł̋����F�蓮)
% Rcc=[15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15];
% ��{�`
% Rcc=[20 18.5 17 16 16 16 17 18 21 15 12 10 9.5 9 9.5 10 12.5 24 20 18 16.5 16 16.5 17 19 21 21 20 17 12 20];

% �ŒZ
% Rcc=[20 18.5 17 16 16 16 17 18 21 15 12 10 9.5 9 9.5 11 13.5 26 25 22 20.5 20 20.5 22 22 18 15 13 11 11 18];

% Cedars-Sinai
% Rcc=[20 18 17 16.5 17 18 15 19 21 15 20 22 20 13 16.5 16 17 16 15 7 10 6 14 16 10 2 10 10 9 18];

% UniversityHospitalRadiologyGroup
% Rcc=[13 13 16 20 18 9 2 6 7 4 10 11 9 19 20 27 17 15 15 15 13 15 18 10 11 6 7 11 14 17];

% �����ߑ咰���O�ȓ���
% Rcc=[14 9 7 8 11 15 13 8 4 4 2 5 11 12 12 12 22 22 19 14 13 15 14 14 17 9 6 9 13 15];

% 150803
Rcc=[9 15 13 10 17 20 12 7 13 17 11 12 15 23 20 11 7 8 9 10 12 13 17 15 6 11 10 16 17 20];
R=Rcc(time)*10;

% �_�C�|�[�����[�����g���x P/S
% �_�C�|�[�����[�����g 0.45.*10.^(-9)Cm
Density=0.45.*10.^(-9)./(2.*Rcb.*pi.*Delta);

Rc=RadiusCylinder(time, Rcb, CI);
OQ=sqrt((Qx)^2+(Qy)^2+(Qz)^2);
% Alpha_Q=atan(Qz/sqrt(Qy^2+Qx^2));                    % yz���ʏ��y���Ɠ_Q�̊p�x(��QyOQz)

% if Qy==0
%     Qy=-10;
% end

Alpha_Q=asin(Qz/sqrt(Qy^2+Qz^2));                    % yz���ʏ��y���Ɠ_Q�̊p�x(��QyOQz)
% if Qy<0
%     Alpha_Q=pi-Alpha_Q;
% end
% if Qz<0
%     Alpha_Q=-Alpha_Q;
% end

Ac=Alpha(time);                         % yz���ʏ��y���Ɠ_Oc�̊p�x(��OcyOOcz)
Phi_Q=acos(Qy/sqrt(Qx^2+Qy^2));         % xy���ʏ��y���Ɠ_Q�̊p�x(��QyOQx)
% Phi_Q=atan(Qx/sqrt(Qy^2+Qz^2));
% Phi_Q=Phi_q(time, R, Ac, OQ, Qx, Qy, Qz);         % yz���ʂƓ_Q�̊p�x(��QyzOQx)

Int=@(Theta, width) Density.*Inner_productDR(time, Theta, R, Rc, OQ, Phi_Q, Alpha_Q, Ac)./(Rho(time, Theta, R, Rc, OQ, Alpha_Q, Phi_Q, Ac).^2);

V=integral2(Int, 0,Theta, 0,Delta)/(4.*pi.*Eps);
end