paturn=7;
model;
r=3.75;
P=0.45*10^(-7);
eps=2.213545.*10.^(-4);

base.co=zeros(100,3);
i=0:(2*pi)/100:2*pi*(99/100);

base.co(:,1)=r*cos(i);
base.co(:,3)=r*sin(i);
base.mo=-base.co/r*P;

cel=-25:25;
map=zeros(numel(cel), numel(cel), 30);
map2=zeros(numel(cel), numel(cel), 30);
map3=zeros(numel(cel), numel(cel), 30);
Base=zeros(30,1);
Max=zeros(30,51);
MAX=zeros(1,30);

for time=1:30
    for tate=1:51
        for yoko=1:51
            
            % ���s�ړ��s��
            A=(modelpaturn(paturn).Oc(time,:))';
            A(4,1)=0;
            A1=cat(2,zeros(4,3),A)+eye(4);
            
            % �_�~�[�s��̒ǉ�
            B=base.co';
            B1=vertcat(B,ones(1,100));
            
            % ���s�ړ�
            Dposi=A1*B1;

            % �_�~�[�s��̍폜
            Dposi(4,:)=[];

            % �ς̒�`
            Eposi=[cel(yoko);
                   cel(tate);
                   6.75];
            Eposi=Eposi(:,ones(1,100));

            rho=Eposi-Dposi;
            map(tate,yoko,time)= trace((base.mo*rho)/(4*pi*eps*norm(rho)^3));
        end
    end
    
    Base(time)=map(26+20, 26+20, time);
    map2(:,:,time)=map(:,:,time)-Base(time);
    
    Max(time,:)=max(map2(:,:,time));
    MAX(time)=max(Max(time,:));
    map3(:,:,time)=map2(:,:,time)/MAX(time);
end

[X2,Y2]=meshgrid(cel,cel);
% figure;
for i=1:30
%     subplot(5,6,i);
    figure;
    surf(X2,Y2,map2(:,:,i));
    shading('flat');
%     colorbar;
    caxis([-MAX(i) MAX(i)]);
    xlim([-25 25]);
    ylim([-25 25]);
    set(gca,'XTick',[-25,-20,-15,-10,-5,0,5,10,15,20,25]);
    set(gca,'YTick',[-25,-20,-15,-10,-5,0,5,10,15,20,25]);
    view(0,90);
    
%     name=strcat('C:\Users\m-kawano\Documents\�Q�l\CTcolonoscopy\�ꎞ/',num2str(i));
%     saveas(gcf, name, 'jpg')
end

%% avi�o��
%{
obj=VideoWriter('C:\Users\m-kawano\Documents\�Q�l\CTcolonoscopy\�ꎞ/modelname');
obj.FrameRate=1;
open(obj)
for i=1:30
    name=strcat('C:\Users\m-kawano\Documents\�Q�l\CTcolonoscopy\�ꎞ/',num2str(i),'.jpg');
    image(imread(name));
    drawnow;
    writeVideo(obj,getframe);
end
close(obj);
%}