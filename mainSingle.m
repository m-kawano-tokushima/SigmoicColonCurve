timemax=70;
Base=zeros(timemax,1);  % ���S�d�ɂł̓d��
Vol=zeros(timemax, 3);  % �e����d�ɂł̓d��
res=zeros(timemax, 3);  % �e�d�ʍ�
onecycle=30;

% Electrode0Position=[0.0675*(10^3) 0.00*(10^3) 0.20*(10^3)];     % ���S�d�Ɉʒu(�f�J���g���W�n)
Electrode0Position=[0.0675*(10^3) 0.20*(10^3) 0.20*(10^3)];     % ���S�d�Ɉʒu(�f�J���g���W�n)
Electrode1Position=[0.0675*(10^3) 0.20*(10^3) 0.15*(10^3)];     % �d��-Ch1�ʒu(�f�J���g���W�n)
Electrode2Position=[0.0675*(10^3) 0.10*(10^3) 0.12*(10^3)];     % �d��-Ch2�ʒu(�f�J���g���W�n)
Electrode3Position=[0.0675*(10^3) -0.05*(10^3) 0.10*(10^3)];    % �d��-Ch3�ʒu(�f�J���g���W�n)
ConstrictionInterval=0;     % ���т�̊Ԋu

%% ----- ���d�} �������� ----- �v�ύX
%{
for i=1:timemax
    
    %{
        ------------------
        �o���h����2�E3�ی��ɂ���Ƃ�     if abs(theta(i))>=pi/2
        EP���㉺���]
        ------------------
    %}
    
    I=rem(i-1,onecycle)+1;
    % ������
%     if I==2 || I==3 || I==4 || I==5 || I==6 || I==9 || I==10 || I==28
    % 150803
    if I==1 || I==2 || I==3 || I==4 || I==5 || I==6 || I==7 || I==28
        E0=[Electrode0Position(1) Electrode0Position(2) -Electrode0Position(3)];
        E1=[Electrode1Position(1) Electrode1Position(2) -Electrode1Position(3)];
        E2=[Electrode2Position(1) Electrode2Position(2) -Electrode2Position(3)];
        E3=[Electrode3Position(1) Electrode3Position(2) -Electrode3Position(3)];
    else
        E0=[Electrode0Position(1) Electrode0Position(2) Electrode0Position(3)];
        E1=[Electrode1Position(1) Electrode1Position(2) Electrode1Position(3)];
        E2=[Electrode2Position(1) Electrode2Position(2) Electrode2Position(3)];
        E3=[Electrode3Position(1) Electrode3Position(2) Electrode3Position(3)];
    end
    
    Base(i)=(10^12)*SigmoidColonCurve(i-1, E0(1), E0(2), E0(3), ConstrictionInterval);

    Vol(i,1)=(10^12)*SigmoidColonCurve(i-1, E1(1), E1(2), E1(3), ConstrictionInterval);
    Vol(i,2)=(10^12)*SigmoidColonCurve(i-1, E2(1), E2(2), E2(3), ConstrictionInterval);
    Vol(i,3)=(10^12)*SigmoidColonCurve(i-1, E3(1), E3(2), E3(3), ConstrictionInterval);
    
    %{
        ------------------    
        �o���h����3�E4�ی��ɂ���Ƃ�     if theta(i)>0 
        Vol(i,:)�𕄍����]
        ------------------
    %}
    % ������
%     if I==2 || I==3 || I==6 || I==10 || I==11 || I==20 || I==21 || I==22 || I==23 || I==24 || I==25 || I==26 || I==27 || I==29 || I==30
        % 150803
    if I==1 || I==2 || I==3 || I==19 || I==20 || I==21 || I==22 || I==23 || I==24 || I==25 || I==26 || I==27 || i==28 || I==29 || I==30
        Base(i)=-Base(i);
        Vol(i,:)=-Vol(i,:);
    end
    
    res(i,:)=Vol(i,:)-Base(i);
end

figure;
time=0:69;
plot(time,res(:,1),'r', 'LineWidth', 2);hold on
plot(time,res(:,2),'g', 'LineWidth', 2)
plot(time,res(:,3),'b', 'LineWidth', 2);hold off
set(gca, 'FontName','Century', 'FontSize',12)
axis([0 69 -0.3 15]);
% set(gca,'YTick',[-4,-2,0,2,4,6,8,10,12,14]);
% ylim([-4 14]);
xlabel('Time[s]')
ylabel('Amplitude[nV]')

name=strcat('C:\Users\m-kawano\Documents\�Q�l\CTcolonoscopy\�ꎞ/sub');
saveas(gcf, name, 'jpg');
%}
% ----- ���d�} �����܂� -----

%% ----- �d�ʕ��z �������� -----
% %{

tate=-250:10:250;
yoko=-250:10:250;
map=zeros(numel(tate), numel(yoko), onecycle);   % ���ʃ}�b�v(��F������)
corr=zeros(numel(tate), numel(yoko), onecycle);  % �␳�p
map2=zeros(numel(tate), numel(yoko), onecycle);  % ���ʃ}�b�v(��F���S�d��)
map3=zeros(numel(tate), numel(yoko), onecycle);

Max=zeros(onecycle,51);
MAX=zeros(1,onecycle);

for i=1:onecycle
    for j=1:51
        if j==25||j==26||j==27
            for k=1:51
                map(j,k,i)=NaN;
            end
        else
            for k=1:51 % yoko
                if k==24 || k==25 || k==26 || k==27 || k==28
                    map(j,k,i)=NaN;
%                 elseif k>26
%                     map(j,k,i)=-(10^12)*(SigmoidColonCurve(i-1, Electrode0Position(1), tate(j), yoko(k), ConstrictionInterval));
                else
                    map(j,k,i)=(10^12)*(SigmoidColonCurve(i-1, Electrode0Position(1), tate(j), yoko(k), ConstrictionInterval));
                end
            end
        end
    end
    
    %{
        ------------------
        �o���h����2�E3�ی��ɂ���Ƃ�     if abs(theta(i))>=pi/2
        map(j,k,i)���㉺���]
        ------------------
    %}    
%     if i<13    % ��{�` �v�ύX

    % Cedars-Sinai �v�ύX
%     if i==1 || i==2 || i==3 || i==4 || i==5 || i==6 || i==7 || i==8 || i==9 || i==20 || i==21 || i==23 || i==24
    
    % UniversityHospitalRadiologyGroup �v�ύX
%     if i==1 || i==2 || i==3 || i==4 || i==5 || i==6 || i==7 || i==8 || i==25 || i==29
    
    % �����ߑ咰���O�ȓ���
    if i==1 || i==2 || i==3 || i==4 || i==5 || i==6 || i==9 || i==10 || i==28

    % 150803
%     if i==1 || i==2 || i==3 || i==4 || i==5 || i==6 || i==7 || i==8 || i==28
        for j=1:51
            for k =1:51
                corr(j,52-k,i)=map(j,k,i);
            end
        end

        map(:,:,i)=corr(:,:,i);
    end
    
    %{
        ------------------
        �o���h����3�E4�ی��ɂ���Ƃ�     if theta(i)>0 
        map(j,k,i)�𕄍����]
        ------------------
    %}
    
    % ������
    if i==2 || i==3 || i==6 || i==10 || i==11 || i==20 || i==21 || i==22 || i==23 || i==24 || i==25 || i==26 || i==27 || i==29 || i==30
        % 150803
%     if i==1 || i==2 || i==3 || i==19 || i==20 || i==21 || i==22 || i==23 || i==24 || i==25 || i==26 || i==27 || i==29 || i==30
        map(:,:,i)=-map(:,:,i);
    end
    
    Base(i)=map(26+Electrode0Position(2)/10,26+Electrode0Position(3)/10,i);
    map2(:,:,i)=map(:,:,i)-Base(i);

    Max(i,:)=max(map(:,:,i));
    MAX(i)=max(Max(i,:));
    map3(:,:,i)=map(:,:,i)/MAX(i);
end
% %{
[X2,Y2]=meshgrid(yoko,tate);
figure;
for i=1:onecycle
%     subplot(5,6,i);
    figure;
    surf(X2,Y2,map2(:,:,i));
    shading('flat');
%     colorbar;
%     caxis([0 MAX(i)*10^9]);
    xlim([-250 250]);
    ylim([-250 250]);
    set(gca,'XTick',[-250,-200,-150,-100,-50,0,50,100,150,200,250]);
    set(gca,'YTick',[-250,-200,-150,-100,-50,0,50,100,150,200,250]);
    view(90,90);
    
    name=strcat('C:\Users\m-kawano\Documents\�Q�l\CTcolonoscopy\�ꎞ/',num2str(i));
    saveas(gcf, name, 'jpg')
end
% %{
% avi�o��
obj=VideoWriter('C:\Users\m-kawano\Documents\�Q�l\CTcolonoscopy\�ꎞ/modelname');
obj.FrameRate=1;
open(obj)
for i=1:onecycle
    name=strcat('C:\Users\m-kawano\Documents\�Q�l\CTcolonoscopy\�ꎞ/',num2str(i),'.jpg');
    image(imread(name));
    drawnow;
    writeVideo(obj,getframe);
end
close(obj);
%}
% ----- �d�ʕ��z �����܂� -----