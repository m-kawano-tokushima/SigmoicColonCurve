function Rc=RadiusCylinder(Time, Rcb, CI)
% �~���̔��a�����߂�֐�
% ���́FTime������, Rcb������a, CI�����ڂ݊Ԋu
% �o�́FRcb�����Ԃɂ����锼�a
if rem(Time, CI)==0
    Rc=Rcb*0.8;
else
    Rc=Rcb;
end
end