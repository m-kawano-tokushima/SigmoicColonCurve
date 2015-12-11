% function Ip=Inner_productDR(Theta, R, RadiusCylinder, OQ, Pq, Alpha_Q, Ac)
% function Ip=Inner_productDR(Time, Theta, R, RadiusCylinder, OQ, Pq, Aq, Ac)
function Ip=Inner_productDR(Ocx, Theta, R, RadiusCylinder, OQ, Pq, Aq, Ac)
% D�~Rho�̃R�T�C��(���x�x�N�g���Ƌ����x�N�g���̓���)
% ���́FTheta���o���h�̒��S�p, R�����_����o���h���S�܂ł̋���,�@RadiusCylinder���o���h���a, OQ�����_�Ɠd�ɂƂ̋���
% ���́FPq����OcOQ, Alpha_Q��XY���ʂ���d�ɂ܂ł̊p�x, Ac����OsOOc
% �o�́FD�~Rho

% Ip=-((OL(Theta, RadiusCylinder, R).*tan(Alpha_Q)).^2+Rho(Theta, R, RadiusCylinder, OQ, Alpha_Q, Pq, Ac).^2-OQ.^2+2.*OQ.*OL(Theta, RadiusCylinder, R).*cos(Phi_c(Theta, RadiusCylinder, R)-Pq))./(2.*OL(Theta, RadiusCylinder, R).*tan(Alpha_Q).*Rho(Theta, R, RadiusCylinder, OQ, Alpha_Q, Pq, Ac));
% Ip=-((OL(Theta, RadiusCylinder, R).*tan(Aq)).^2+Rho(Time, Theta, R, RadiusCylinder, OQ, Aq, Pq, Ac).^2-OQ.^2+2.*OQ.*OL(Theta, RadiusCylinder, R).*cos(Phi_c(Time, Theta, RadiusCylinder, R)-Pq))./(2.*OL(Theta, RadiusCylinder, R).*tan(Aq).*Rho(Time, Theta, R, RadiusCylinder, OQ, Aq, Pq, Ac));
Ip=-((OL(Theta, RadiusCylinder, R).*tan(Aq)).^2+Rho(Ocx, Theta, R, RadiusCylinder, OQ, Aq, Pq, Ac).^2-OQ.^2+2.*OQ.*OL(Theta, RadiusCylinder, R).*cos(Phi_c(Ocx, Theta, RadiusCylinder, R)-Pq))./(2.*OL(Theta, RadiusCylinder, R).*tan(Aq).*Rho(Ocx, Theta, R, RadiusCylinder, OQ, Aq, Pq, Ac));
end