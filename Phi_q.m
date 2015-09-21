% function Pq=Phi_q(R, Ac, OQ, Qx, Qy, Qz)
function Pq=Phi_q(Time, R, Ac, OQ, Qx, Qy, Qz)
% ��OcOQ
% ���́FR�����_����o���h���S�܂ł̋���, Ac����OsOOc, OQ�����_�Ɠd�ɂƂ̋���, Qx���d�ɂ�X���W, Qy���d�ɂ�Y���W, Qz���d�ɂ�Z���W
% �o�́F��OcOQ

% �E���Ƀo���h���S��X���W
% 2D
% Ocx=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

% �����ߑ咰���O�ȓ���
Ocx=[-2 -3 -5 -7 -4 0 2 -2 -4 -2 0 0 0 -1 3 3 3 3 3 -1 0 0 1 1 -2 -4 -5 -7 -8 -8];

% 150803
% Ocx=[0 2 -2 -2 -3 -1 2 5 5 5 1 2 2 3 -3 -1 -2 0 0 3 3 5 2 -2 2 2 -2 -5 -2 -1];

% Ocx=0;              % �E���Ƀo���h���S��X���W
Ocy=R.*cos(Ac);     % �E���Ƀo���h���S��Y���W
Ocz=R.*sin(Ac);     % �E���Ƀo���h���S��Z���W

% Ocq=sqrt((Qx-Ocx*10).^2+(Qy-Ocy).^2+(Qz-Ocz).^2);    % �E���Ƀo���h�̒��S����C�ӓ_�܂ł̋���
Ocq=sqrt((Qx-Ocx(Time)*10).^2+(Qy-Ocy).^2+(Qz-Ocz).^2);    % �E���Ƀo���h�̒��S����C�ӓ_�܂ł̋���

Pq=acos((R.^2+OQ.^2-Ocq.^2)./(2.*R.*OQ));
end