function Rho=Rho(Theta, R, RadiusCylinder, OQ, Alpha_Q, Pq, Ac)
% �����̈悩��d�ɂ܂ł̋����x�N�g��
% ���́FTheta���o���h�̒��S�p, R�����_����o���h���S�܂ł̋���,�@RadiusCylinder���o���h���a, OQ�����_�Ɠd�ɂƂ̋���
% ���́FAlpha_Q��XY���ʂ���d�ɂ܂ł̊p�x, Pq����OcOQ, Ac����OsOOc
% �o�́F�����̈悩��d�ɂ܂ł̋����x�N�g��

Rho=sqrt(OL(Theta, RadiusCylinder, R).^2+OQ.^2-2.*OL(Theta, RadiusCylinder, R).*OQ.*cos(Phi_c(Theta, RadiusCylinder, R)-Pq).*cos(Alpha_Q-Ac));
end