function Ip=Inner_productDR(Theta, R, RadiusCylinder, OQ, Pq, Alpha_Q, Ac)
% D�~Rho(���x�x�N�g���Ƌ����x�N�g���̓���)
% ���́FTheta���o���h�̒��S�p, R�����_����o���h���S�܂ł̋���,�@RadiusCylinder���o���h���a, OQ�����_�Ɠd�ɂƂ̋���
% ���́FPq����OcOQ, Alpha_Q��XY���ʂ���d�ɂ܂ł̊p�x, Ac����OsOOc
% �o�́FD�~Rho
Ip=-((OL(Theta, RadiusCylinder, R).*tan(Alpha_Q)).^2+Rho(Theta, R, RadiusCylinder, OQ, Alpha_Q, Pq, Ac).^2-OQ.^2+2.*OQ.*OL(Theta, RadiusCylinder, R).*cos(Phi_c(Theta, RadiusCylinder, R)-Pq))./(2.*OL(Theta, RadiusCylinder, R).*tan(Alpha_Q).*Rho(Theta, R, RadiusCylinder, OQ, Alpha_Q, Pq, Ac));
end