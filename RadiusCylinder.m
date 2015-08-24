function Rc=RadiusCylinder(Time, Rcb, CI)
% 円柱の半径を決める関数
% 入力：Time＝時間, Rcb＝基準半径, CI＝くぼみ間隔
% 出力：Rcb＝時間における半径
if rem(Time, CI)==0
    Rc=Rcb*0.8;
else
    Rc=Rcb;
end
end