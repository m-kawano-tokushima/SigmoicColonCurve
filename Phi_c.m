function Pc=Phi_c(Time, Theta, RadiusCylinder, R)
% yz���ʂ�L�̊p�x
% ���́FTheta���o���h�̒��S�p, RadiusCylinder���o���h���a, R�����_����o���h���S�܂ł̋���
% �o�́Fyz���ʂ�L�̊p�x

% �E���Ƀo���h���S��X���W
% 150803
Ocx=[-0.5 1 2 0.8 2.1 0.2 -0.8 -2 -2.5 -2 -1 -0.9 -0.8 -1 0 4.5 2.3 0.7 1 -1 -2 -2.4 -0.5 1.3 -0.5 -0.4 0 3.5 5 1.6];

OcAngle=atan(Ocx(Time)*10/R);    % yz���ʂ�Oc�̊p�x

% ��OcOL
OLAngle=acos((R.^2+OL(Theta, RadiusCylinder, R).^2-RadiusCylinder.^2)./(2.*R.*OL(Theta, RadiusCylinder, R)));
Pc=OLAngle+OcAngle;
end