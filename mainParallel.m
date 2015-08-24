% res=zeros(70, 3);

time=0:69;

Electrode0Position=[0.0675 0.14 0.06];     % 中心電極位置(デカルト座標系)
Electrode1Position=[0.0675 0.09 0.12];     % 電極-Ch1位置(デカルト座標系)
ConstrictionInterval=[1 2 3 6];     % くびれの間隔

res=zeros(70, numel(Electrode0Position), numel(ConstrictionInterval));

for j=1:numel(ConstrictionInterval)
    for i=1:numel(time)
        res(i,1,j)=SigmoidColonCurve(i, Electrode0Position(1), Electrode0Position(2), Electrode0Position(3), ConstrictionInterval(j));
        res(i,2,j)=SigmoidColonCurve(i, Electrode1Position(1), Electrode1Position(2), Electrode1Position(3), ConstrictionInterval(j));
        res(i,3,j)=res(i,2,j)-res(i,1,j);
    end
end

plot(time,res(:,3,1)*10^3,'k');hold on
plot(time,res(:,3,2)*10^3,'r')
plot(time,res(:,3,3)*10^3,'g')
plot(time,res(:,3,4)*10^3,'b');hold off
set(gca, 'FontName','Century', 'FontSize',12)
xlabel('Time[s]')
ylabel('Amplitude[mV]')
legend('CI=0','CI=2','CI=3','CI=6')