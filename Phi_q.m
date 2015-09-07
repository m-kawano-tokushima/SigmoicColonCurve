function Pq=Phi_q(Time, R, Ac, OQ, Qx, Qy, Qz)
% ��OcOQ
% ���́FR�����_����o���h���S�܂ł̋���, Ac����OsOOc, OQ�����_�Ɠd�ɂƂ̋���, Qx���d�ɂ�X���W, Qy���d�ɂ�Y���W, Qz���d�ɂ�Z���W
% �o�́F��OcOQ

% �E���Ƀo���h���S��X���W
% 150803
Ocx=[-0.5 1 2 0.8 2.1 0.2 -0.8 -2 -2.5 -2 -1 -0.9 -0.8 -1 0 4.5 2.3 0.7 1 -1 -2 -2.4 -0.5 1.3 -0.5 -0.4 0 3.5 5 1.6];

Ocy=R.*cos(Ac);     % �E���Ƀo���h���S��Y���W
Ocz=R.*sin(Ac);     % �E���Ƀo���h���S��Z���W
Ocq=sqrt((Qx-Ocx(Time)*10).^2+(Qy-Ocy).^2+(Qz-Ocz).^2);    % �E���Ƀo���h�̒��S����C�ӓ_�܂ł̋���

Pq=acos((R.^2+OQ.^2-Ocq.^2)./(2.*R.*OQ));
end