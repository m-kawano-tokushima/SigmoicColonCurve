% function Pc=Phi_c(Theta, RadiusCylinder, R)
function Pc=Phi_c(Time, Theta, RadiusCylinder, R)
% yz���ʂ�L�̊p�x
% ���́FTheta���o���h�̒��S�p, RadiusCylinder���o���h���a, R�����_����o���h���S�܂ł̋���
% �o�́Fyz���ʂ�L�̊p�x

% �E���Ƀo���h���S��X���W
% 2D
% Ocx=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

% �����ߑ咰���O�ȓ���
Ocx=[-2 -3 -5 -7 -4 0 2 -2 -4 -2 0 0 0 -1 3 3 3 3 3 -1 0 0 1 1 -2 -4 -5 -7 -8 -8];

% 150803
% Ocx=[0 2 -2 -2 -3 -1 2 5 5 5 1 2 2 3 -3 -1 -2 0 0 3 3 5 2 -2 2 2 -2 -5 -2 -1];
ThisOcx=Ocx(Time)*10;

OcAngle=asin(ThisOcx/sqrt(ThisOcx^2+R^2));    % yz���ʂ�Oc�̊p�x

% ��OcOL
OLAngle=asin(RadiusCylinder.*sin(Theta)./OL(Theta, RadiusCylinder, R));

Pc=OLAngle+OcAngle;
end