timemax=70;
% testBase=zeros(timemax,1);  % 中心電極での電位
% testres=zeros(timemax, 3);  % 各電位差
onecycle=30;

Electrode0Position=[0.0675*(10^3) 0.00*(10^3) 0.20*(10^3)];     % 中心電極位置(デカルト座標系)
Electrode1Position=[0.0675*(10^3) 0.20*(10^3) 0.15*(10^3)];     % 電極-Ch1位置(デカルト座標系)
Electrode2Position=[0.0675*(10^3) 0.10*(10^3) 0.12*(10^3)];     % 電極-Ch2位置(デカルト座標系)
Electrode3Position=[0.0675*(10^3) -0.05*(10^3) 0.10*(10^3)];    % 電極-Ch3位置(デカルト座標系)
ConstrictionInterval=0;     % くびれの間隔
tate=-250:50:250;
yoko=-250:50:250;
testmap=zeros(numel(tate), numel(yoko));   % 平面マップ(基準：無限遠)
testcorr=zeros(numel(tate), numel(yoko));  % 補正用
testmap2=zeros(numel(tate), numel(yoko));  % 平面マップ(基準：中心電極)
testmap3=zeros(numel(tate), numel(yoko));

Max=zeros(51);
% MAX=zeros(1,onecycle);

i=5;
% for i=1:onecycle
    
%     Base(i)=(10^12)*SigmoidColonCurve(i-1, Electrode0Position(1), Electrode0Position(2), Electrode0Position(3), ConstrictionInterval);

    for j=1:11 % tate
        for k=1:11 % yoko
            testmap(k,j)=real((10^12)*(SigmoidColonCurve(i-1, Electrode0Position(1), tate(12-j), yoko(12-k), ConstrictionInterval)));
%             map2(j,k,i)=map(j,k,i)-Base(i);
        end
        
%         for k=24:28
%             testmap(j,k)=0;
% %             map2(j,k,i)=map(j,k,i)-Base(i);
%         end
        
%         for k=29:51
%             testmap(j,k)=real((10^12)*SigmoidColonCurve(i-1, Electrode0Position(1), tate(j), yoko(k), ConstrictionInterval));
%             map2(j,k,i)=map(j,k,i)-Base(i);

%         for k=24:51 % yoko
%             testmap(k,j)=real((10^12)*(SigmoidColonCurve(i-1, Electrode0Position(1), tate(52-j), yoko(52-k), ConstrictionInterval)));
% %             map2(j,k,i)=map(j,k,i)-Base(i);
%         end
    end
    
    %{
        ------------------
        バンドが第2・3象限にあるとき     if abs(theta(i))>pi/2
        map(j,k,i)を180度回転
    ------------------
    %}    
%     if i<13    % 基本形 要変更

    % Cedars-Sinai 要変更
%     if i==1 || i==2 || i==3 || i==4 || i==5 || i==6 || i==7 || i==8 || i==9 || i==20 || i==21 || i==23 || i==24
    
    % UniversityHospitalRadiologyGroup 要変更
%     if i==1 || i==2 || i==3 || i==4 || i==5 || i==6 || i==7 || i==8 || i==25 || i==29
    
    % いきめ大腸肛門外科内科
%     if i==2 || i==3 || i==4 || i==5 || i==8 || i==9 || i==10 || i==27 || i==28

    % 150803
%     if i==1 || i==2 || i==3 || i==4 || i==5 || i==6 || i==7 || i==28
%         for j=1:51
%             for k =1:51
%                 testcorr(52-k,52-j)=testmap(k,j);
%             end
%         end
% 
%         testmap(:,:)=testcorr(:,:);
%     end
    
    %{
        ------------------
        バンドが第3・4象限にあるとき     if theta(i)>0 
        map(j,k,i)を符号反転
        ------------------
    %}
    
    % いきめ
%     if i==1 || i==2 || i==3 || i==8 || i==9 || i==20 || i==21 || i==22 || i==23 || i==24 || i==25 || i==26 || i==27 || i==29 || i==30
        % 150803
%     if i==1 || i==2 || i==3 || i==19 || i==20 || i==21 || i==22 || i==23 || i==24 || i==25 || i==26 || i==27|| i==29 || i==30
%         testmap(:,:)=-testmap(:,:);
%     end
    
%     testBase=testmap(26+Electrode0Position(2)/10,26+Electrode0Position(3)/10);
%     testmap2(:,:)=testmap(:,:)-testBase;
% %     else
% %         map(:,:,i)=-map(:,:,i);
% %         map2(:,:,i)=-map2(:,:,i);
%     Base(i)=map(26+0,26+20,i);
%     Max(:)=max(testmap(:,:));
%     MAX=max(Max(:));
%     testmap3(:,:)=testmap(:,:)/MAX;
% end
% %{
[X2,Y2]=meshgrid(yoko,tate);
figure;
% for i=1:onecycle
%     subplot(5,6,i);
%     figure;
    surf(X2,Y2,testmap(:,:).');
    shading('flat');
%     colorbar;
%     caxis([0 MAX(i)*10^9]);
    xlim([-250 250]);
    ylim([-250 250]);
    set(gca,'XTick',[-250,-200,-150,-100,-50,0,50,100,150,200,250]);
    set(gca,'YTick',[-250,-200,-150,-100,-50,0,50,100,150,200,250]);
    view(90,90);
    
%     name=strcat('figure/fg',num2str(i));
%     saveas(gcf, name, 'jpg')
% end