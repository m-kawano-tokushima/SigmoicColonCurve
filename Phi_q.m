function Pq=Phi_q(R, Ac, OQ, Qx, Qy, Qz)
% ��OcOQ
% ���́FR�����_����o���h���S�܂ł̋���, Ac����OsOOc, OQ�����_�Ɠd�ɂƂ̋���, Qx���d�ɂ�X���W, Qy���d�ɂ�Y���W, Qz���d�ɂ�Z���W
% �o�́F��OcOQ

Ocx=-10;            % �E���Ƀo���h���S��X���W
Ocy=R.*cos(Ac);     % �E���Ƀo���h���S��Y���W
Ocz=R.*sin(Ac);     % �E���Ƀo���h���S��Z���W
Ocq=sqrt((Qx-Ocx).^2+(Qy-Ocy).^2+(Qz-Ocz).^2);    % �E���Ƀo���h�̒��S����C�ӓ_�܂ł̋���

Pq=acos((R.^2+OQ.^2-Ocq.^2)./(2.*R.*OQ));
end