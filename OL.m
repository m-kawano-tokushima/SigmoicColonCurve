function OL=OL(Theta, RadiusCylinder, R)
% ���_��������̈�܂ł̋���
% ���́FTheta���o���h�̒��S�p, RadiusCylinder���o���h���a, R�����_����o���h���S�܂ł̋���
% Theta��OOc���玞�v���
% �o�́F���_��������̈�܂ł̋���
OL=sqrt(R.^2+RadiusCylinder.^2-2.*R.*RadiusCylinder.*cos(Theta));
end