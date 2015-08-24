timemax=70;
res=zeros(timemax, 3);
Vol=zeros(timemax, 3);

tate=-300:10:300;
yoko=-300:10:300;
map=zeros(numel(tate), numel(yoko), timemax);   % 平面マップ(基準：無限遠)
map2=zeros(numel(tate), numel(yoko), timemax);  % 平面マップ(基準：中心電極)
map3=zeros(numel(tate), numel(yoko), timemax);

Max=zeros(timemax,61);
MAX=zeros(1,timemax);

Electrode0Position=[0.0675*(10^3) 0.00*(10^3) 0.20*(10^3)];     % 中心電極位置(デカルト座標系)
Electrode1Position=[0.0675*(10^3) 0.20*(10^3) 0.15*(10^3)];     % 電極-Ch1位置(デカルト座標系)
Electrode2Position=[0.0675*(10^3) 0.10*(10^3) 0.12*(10^3)];     % 電極-Ch2位置(デカルト座標系)
Electrode3Position=[0.0675*(10^3) -0.05*(10^3) 0.10*(10^3)];    % 電極-Ch3位置(デカルト座標系)
ConstrictionInterval=0;     % くびれの間隔

% ----- 腸電図 ここから -----
for i=1:timemax
    Base=(10^3)*SigmoidColonCurve(i-1, Electrode0Position(1), Electrode0Position(2), Electrode0Position(3), ConstrictionInterval);

    res(i,1)=(10^3)*SigmoidColonCurve(i-1, Electrode1Position(1), Electrode1Position(2), Electrode1Position(3), ConstrictionInterval)-Base;
    res(i,2)=(10^3)*SigmoidColonCurve(i-1, Electrode2Position(1), Electrode2Position(2), Electrode2Position(3), ConstrictionInterval)-Base;
    res(i,3)=(10^3)*SigmoidColonCurve(i-1, Electrode3Position(1), Electrode3Position(2), Electrode3Position(3), ConstrictionInterval)-Base;
end

time=0:69;
plot(time,res(:,1)*10^9,'r', 'LineWidth', 2);hold on
plot(time,res(:,2)*10^9,'g', 'LineWidth', 2)
plot(time,res(:,3)*10^9,'b', 'LineWidth', 2);hold off
set(gca, 'FontName','Century', 'FontSize',12)
set(gca,'YTick',[-4,-2,0,2,4,6,8,10,12,14]);
% ylim([-4 14]);
xlabel('Time[s]')
ylabel('Amplitude[nV]')
% ----- 腸電図 ここまで -----

% ----- 電位分布 ここから -----
%{
for i=1:timemax
    Base=(10^3)*SigmoidColonCurve(i-1, Electrode0Position(1), Electrode0Position(2), Electrode0Position(3), ConstrictionInterval);

    for j=1:61
        for k=1:28
            map(j,k,i)=-(10^3)*(SigmoidColonCurve(i-1, Electrode0Position(1), tate(j), yoko(k), ConstrictionInterval));
            map2(j,k,i)=map(j,k,i)-Base;
        end
        
        for k=29:33
        map(j,k,i)=0;
%         map2(j,k,i)=map(j,k,i)-Base;
        end
        
        for k=34:61
            map(j,k,i)=(10^3)*SigmoidColonCurve(i-1, Electrode0Position(1), tate(j), yoko(k), ConstrictionInterval);
%             map2(j,k,i)=map(j,k,i)-Base;
        end
    end
    
    %{
        ------------------
        第2・3象限は符号反転
        ------------------
    %}
    
%     if i<13    % 基本形

    % Cedars-Sinai
%     if i==1 || i==2 || i==3 || i==4 || i==5 || i==6 || i==7 || i==8 || i==9 || i==20 || i==21 || i==23 || i==24
    
    % UniversityHospitalRadiologyGroup
%     if i==1 || i==2 || i==3 || i==4 || i==5 || i==6 || i==7 || i==8 || i==25 || i==29
    
    % いきめ大腸肛門外科内科
%     if i==2 || i==3 || i==4 || i==5 || i==9 || i==10

    % 150803
    if i<9
        map(:,:,i)=-map(:,:,i);
%         map2(:,:,i)=-map2(:,:,i);
%     elseif 19<i<25
%         map(:,:,i)=-map(:,:,i);
%         map2(:,:,i)=-map2(:,:,i);
    end
    
    Max(i,:)=max(map(:,:,i));
    MAX(i)=max(Max(i,:));
    map3(:,:,i)=map(:,:,i)/MAX(i);
end  

[X2,Y2]=meshgrid(tate,yoko);
for i=1:30
%     subplot(5,6,i);
    figure(i)
    surf(X2,Y2,map(:,:,i).*10^9);
    shading('flat');
%     colorbar;
    caxis([0 MAX(i)*10^9]);
    xlim([-300 300]);
    ylim([-300 300]);
    set(gca,'XTick',[-300,-200,-100,0,100,200,300]);
    set(gca,'YTick',[-300,-200,-100,0,100,200,300]);
%     view(90,-90);

    %{
        ------------------
        第2・3象限は+z方向から
        第1・4象限は-z方向から
        条件は符号と同じ
        ------------------
    %}
    % 150803
    if i<9
        view(-90, -90)
    else
        view(90, -90)
    end
    
    name=strcat('figure/fg',num2str(i));
    saveas(gcf, name, 'jpg')
end

% avi出力
obj=VideoWriter('150803');
obj.FrameRate=1;
open(obj)
for i=1:30
    name=strcat('C:\Users\m-kawano\Documents\MATLAB\SigmoidColonCurve\figure\fg',num2str(i),'.jpg');
    image(imread(name));
    drawnow;
    writeVideo(obj,getframe);
end
close(obj)
%}
% ----- 電位分布 ここまで -----