% function Rho=Rho(Theta, R, RadiusCylinder, OQ, Aq, Pq, Ac)
% function Rho=Rho(Time, Theta, R, RadiusCylinder, OQ, Aq, Pq, Ac)
function Rho=Rho(Ocx, Theta, R, RadiusCylinder, OQ, Aq, Pq, Ac)
% �����̈悩��d�ɂ܂ł̋����x�N�g��
% ���́FTheta���o���h�̒��S�p, R�����_����o���h���S�܂ł̋���,�@RadiusCylinder���o���h���a, OQ�����_�Ɠd�ɂƂ̋���
% ���́FAq��XY���ʂ���_Q�̊p�x(��QxyOQxyz), Pq��XY���ʏ��y���Ɠ_Q�̊p�x(��QyzOQxyz), Ac��XY���ʂ���_Oc�̊p�x(��OcxyOOcxyz)
% �o�́F�����̈悩��d�ɂ܂ł̋����x�N�g��
ol=OL(Theta, RadiusCylinder, R);
% Rho=sqrt(ol.^2+OQ.^2-2.*ol.*OQ.*cos(Phi_c(Theta, RadiusCylinder, R)-Pq).*cos(Aq-Ac));
% Rho=sqrt(ol.^2+OQ.^2-2.*ol.*OQ.*cos(Phi_c(Time, Theta, RadiusCylinder, R)-Pq).*cos(Aq-Ac));
Rho=sqrt(ol.^2+OQ.^2-2.*ol.*OQ.*cos(Phi_c(Ocx, Theta, RadiusCylinder, R)-Pq).*cos(Aq-Ac));
end