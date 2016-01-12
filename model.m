%{  
    ----- modelpaturn�\���� -----
    model(paturnNumber)
    .name               ���O
    .Oc(time, x/y/z)    ���Ԃɑ΂��钆�S���W
    .quad(time)      ���Ԃɑ΂��钆�S���W�̏ی�
%}
%% --------------------
modelpaturn(1).name = '��{�`';
modelpaturn(1).Oc = [1 2 3; 0 0 0; 0 0 0; 0 0 0; 0 0 0;       % time=1�`5 [x y z]
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0];      % time=26�`30 [x y z]
%% --------------------
modelpaturn(2).name='Cedars-Sinai';
modelpaturn(2).Oc = [0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0];
%% --------------------
modelpaturn(3).name='UniversityHospitalRadiologyGroup';
modelpaturn(3).Oc = [0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0];
%% --------------------
modelpaturn(4).name='�����ߑ咰���O�ȓ���';
modelpaturn(4).Oc = [0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0];
%% --------------------
modelpaturn(5).name='150803';
modelpaturn(5).Oc = [0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0;
                     0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0];
%% --------------------
modelpaturn(6).name='1509182';
modelpaturn(6).Oc = [ 0.00 -7.00 -4.00; -2.00 -9.50 -3.50; -3.00 -9.00  0.00; -3.00 -7.50  2.70; -2.00 -7.70  9.20;  2.00 -6.40  6.40;
                      5.00  2.00 -3.50;  4.00  5.80 -1.60;  3.00  9.00  0.00;  1.00  7.10  7.10;  2.00  6.50  11.3;  3.00  0.00  15.0;
                      2.00  3.00  16.7;  0.00  11.0  14.3; -2.00  9.20  9.20; -3.00  7.80  4.50;  1.00  11.3 -4.10;  2.00  6.40 -6.40;
                     -3.00  5.00 -8.70;  1.00  1.40 -7.90;  2.00 -1.70 -12.9;  1.00 -4.80 -13.2;  1.00 -4.50 -7.80;  1.00  0.00 -5.00;
                     -1.00 -2.00  0.00; -3.00 -1.80 -6.80; -8.00  1.90 -10.8; -7.00 -2.80 -10.6; -2.00  0.00 -15.0; -3.00  0.00 -19.0];
%% --------------------
modelpaturn(7).name='test';
% modelpaturn(7).Oc = [-15 -14 0; -15 -13 0; -15 -12 0; -15 -11 0; -15 -10 0;
%                      -15  -9 0; -15  -8 0; -15  -7 0; -15  -6 0; -15  -5 0;
%                      -15  -4 0; -15  -3 0; -15  -2 0; -15  -1 0; -15   0 0;
%                      -15   1 0; -15   2 0; -15   3 0; -15   4 0; -15   5 0;
%                      -15   6 0; -15   7 0; -15   8 0; -15   9 0; -15  10 0;
%                      -15  11 0; -15  12 0; -15  13 0; -15  14 0; -15  15 0];
modelpaturn(7).Oc = [0 -15 -14; 0 -15 -13; 0 -15 -12; 0 -15 -11; 0 -15 -10;
                     0 -15  -9; 0 -15  -8; 0 -15  -7; 0 -15  -6; 0 -15  -5;
                     0 -15  -4; 0 -15  -3; 0 -15  -2; 0 -15  -1; 0 -15   0;
                     0 -15   1; 0 -15   2; 0 -15   3; 0 -15   4; 0 -15   5;
                     0 -15   6; 0 -15   7; 0 -15   8; 0 -15   9; 0 -15  10;
                     0 -15  11; 0 -15  12; 0 -15  13; 0 -15  14; 0 -15  15];