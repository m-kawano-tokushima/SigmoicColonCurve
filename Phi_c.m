function Pc=Phi_c(Theta, RadiusCylinder, R)
% yz���ʂ�L�̊p�x
% ���́FTheta���o���h�̒��S�p, RadiusCylinder���o���h���a, R�����_����o���h���S�܂ł̋���
% �o�́Fyz���ʂ�L�̊p�x

Ocx=-10;                % �E���Ƀo���h���S��X���W
OcAngle=atan(Ocx/R);    % yz���ʂ�Oc�̊p�x

% ��OcOL
OLAngle=acos((R.^2+OL(Theta, RadiusCylinder, R).^2-RadiusCylinder.^2)./(2.*R.*OL(Theta, RadiusCylinder, R)));
Pc=OLAngle+OcAngle;
end