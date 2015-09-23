time = 0:69;
base=zeros(70,1);
dis=zeros(70,3);
deff=zeros(70,3);

Qb=[6.75 0 20];     % 中心電極位置(デカルト座標系)
Q1=[6.75 20 15];     % 電極-Ch1位置(デカルト座標系)
Q2=[6.75 10 12];     % 電極-Ch2位置(デカルト座標系)
Q3=[6.75 -5 10];    % 電極-Ch3位置(デカルト座標系)

% --- 150803 ---------------------------
Ocx=[0 2 -2 -2 -3 -1 2 5 5 5 1 2 2 3 -3 -1 -2 0 0 3 3 5 2 -2 2 2 -2 -5 -2 -1];
Rcc=[9 15 13 10 17 20 12 7 13 17 11 12 15 23 20 11 7 8 9 10 12 13 17 15 6 11 10 16 17 20];
alpha=[5/6*pi 3/4*pi 8/9*pi -17/18*pi -23/30*pi -7/10*pi -4/5*pi -13/15*pi -7/18*pi -5/12*pi -1/3*pi -1/4*pi -1/4*pi -13/36*pi -3/10*pi -1/6*pi -2/9*pi 0 1/6*pi 1/12*pi 1/4*pi 1/3*pi 4/9*pi 2/5*pi 11/18*pi 5/9*pi 1/2*pi 5/9*pi 1/2*pi 1/2*pi];

Ocy=Rcc.*cos(alpha);
Ocz=Rcc.*sin(alpha);

for t=1:70
    i=rem(t-1,30)+1;
    base(t) = sqrt((Qb(1)-Ocx(i)).^2 + (Qb(2)-Ocy(i)).^2 + (Qb(3)-Ocz(i)).^2);
    dis(t,1) = sqrt((Q1(1)-Ocx(i)).^2 + (Q1(2)-Ocy(i)).^2 + (Q1(3)-Ocz(i)).^2);
    dis(t,2) = sqrt((Q2(1)-Ocx(i)).^2 + (Q2(2)-Ocy(i)).^2 + (Q2(3)-Ocz(i)).^2);
    dis(t,3) = sqrt((Q3(1)-Ocx(i)).^2 + (Q3(2)-Ocy(i)).^2 + (Q3(3)-Ocz(i)).^2);
end

deff(:,1)=dis(:,1)-base(:);
deff(:,2)=dis(:,2)-base(:);
deff(:,3)=dis(:,3)-base(:);

figure(1);
plot(time,base(:),'k', 'LineWidth', 2);hold on
plot(time,dis(:,1),'r', 'LineWidth', 2)
plot(time,dis(:,2),'g', 'LineWidth', 2)
plot(time,dis(:,3),'b', 'LineWidth', 2);hold off
set(gca, 'FontName','Century', 'FontSize',12)
% set(gca,'YTick',[-4,-2,0,2,4,6,8,10,12,14]);
% ylim([-4 14]);
xlabel('Time[s]')
ylabel('distance[cm]')
title('150803 dis');

figure(2);
plot(time,deff(:,1),'r', 'LineWidth', 2);hold on
plot(time,deff(:,2),'g', 'LineWidth', 2)
plot(time,deff(:,3),'b', 'LineWidth', 2);hold off
set(gca, 'FontName','Century', 'FontSize',12)
% set(gca,'YTick',[-4,-2,0,2,4,6,8,10,12,14]);
% ylim([-4 14]);
xlabel('Time[s]')
ylabel('deff of dis[cm]')
title('150803 deff');

% --- いきめ大腸肛門外科内科 ---------------------------
Ocx=[-2 -3 -5 -7 -4 0 2 -2 -4 -2 0 0 0 -1 3 3 3 3 3 -1 0 0 1 1 -2 -4 -5 -7 -8 -8];
Rcc=[14 9 7 8 11 15 13 8 4 4 2 5 11 12 12 12 22 22 19 14 13 15 14 14 17 9 6 9 13 15];
alpha=[14*pi/27 3*pi/4 pi -13*pi/18 -11*pi/18 -25*pi/48 -5*pi/12 -23*pi/48 -13*pi/18 5*pi/6 pi/2 -pi/6 -pi/18 -pi/12 -pi/6 -11*pi/36 -13*pi/36 -5*pi/18 -pi/4 pi/18 pi/27 pi/6 5*pi/18 5*pi/12 7*pi/18 pi/4 4*pi/9 19*pi/36 5*pi/12 pi/2];

Ocy=Rcc.*cos(alpha);
Ocz=Rcc.*sin(alpha);

for t=1:70
    i=rem(t-1,30)+1;
    base(t) = sqrt((Qb(1)-Ocx(i)).^2 + (Qb(2)-Ocy(i)).^2 + (Qb(3)-Ocz(i)).^2);
    dis(t,1) = sqrt((Q1(1)-Ocx(i)).^2 + (Q1(2)-Ocy(i)).^2 + (Q1(3)-Ocz(i)).^2);
    dis(t,2) = sqrt((Q2(1)-Ocx(i)).^2 + (Q2(2)-Ocy(i)).^2 + (Q2(3)-Ocz(i)).^2);
    dis(t,3) = sqrt((Q3(1)-Ocx(i)).^2 + (Q3(2)-Ocy(i)).^2 + (Q3(3)-Ocz(i)).^2);
end

deff(:,1)=dis(:,1)-base(:);
deff(:,2)=dis(:,2)-base(:);
deff(:,3)=dis(:,3)-base(:);

figure(3);
plot(time,base(:),'k', 'LineWidth', 2);hold on
plot(time,dis(:,1),'r', 'LineWidth', 2)
plot(time,dis(:,2),'g', 'LineWidth', 2)
plot(time,dis(:,3),'b', 'LineWidth', 2);hold off
set(gca, 'FontName','Century', 'FontSize',12)
% set(gca,'YTick',[-4,-2,0,2,4,6,8,10,12,14]);
% ylim([-4 14]);
xlabel('Time[s]')
ylabel('distance[cm]')
title('ikime dis');

figure(4);
plot(time,deff(:,1),'r', 'LineWidth', 2);hold on
plot(time,deff(:,2),'g', 'LineWidth', 2)
plot(time,deff(:,3),'b', 'LineWidth', 2);hold off
set(gca, 'FontName','Century', 'FontSize',12)
% set(gca,'YTick',[-4,-2,0,2,4,6,8,10,12,14]);
% ylim([-4 14]);
xlabel('Time[s]')
title('ikime deff');

% ------------------------------


