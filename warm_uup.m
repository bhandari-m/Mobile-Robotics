%WARM UP TASKS
% ANSWER 1:
rng(201601);
mu = [166;166];
sigma = [2,0;0,4];
r=mvnrnd(mu,sigma,1000);

% ANSWER 2 :
meanx=0;
meany=0;
for i=1:1000
    meanx=meanx + r(i,1);
    meany=meany + r(i,2);
 end;
meanx=meanx/1000;
meany=meany/1000;

sgmx=0;
sgmy=0;
sgmxy=0;
for i=1:1000
    sgmx=sgmx+(r(i,1)-meanx)*(r(i,1)-meanx);
    sgmy=sgmy+(r(i,2)-meany)*(r(i,2)-meany);
    sgmxy=sgmxy+(r(i,1)-meanx)*(r(i,2)-meany);
end;
sgmx=sgmx/1000;
sgmy=sgmy/1000;
sgmxy=sgmxy/1000;

MU_OLD = [meanx meany];
SIGMA_OLD = [sgmx ,sgmxy; sgmxy, sgmy];
MU_ORIG = MU_OLD.';

% ANSWER 3 :
p = mvnpdf(r,MU_OLD,SIGMA_OLD);
figure;
colormap('hot');
hold on;
scatter(r(:,1),r(:,2),60,p,'filled');
colorbar;

%ANSWER 4 :
A = [1 0;0 6];
b= [6;6];
tr=r.';

for i=1:1000
    TR_r(:,i)=A*tr(:,i);
    TR_r(:,i)=TR_r(:,i)+b;
end;

ftr=TR_r.';

% % ANSWER 5 :
ftrmeanx=0;
ftrmeany=0;
for i=1:1000
    ftrmeanx=ftrmeanx + ftr(i,1);
    ftrmeany=ftrmeany + ftr(i,2);
 end;
ftrmeanx=ftrmeanx/1000;
ftrmeany=ftrmeany/1000;

ftrsgmx=0;
ftrsgmy=0;
ftrsgmxy=0;
for i=1:1000
    ftrsgmx=ftrsgmx+(ftr(i,1)-ftrmeanx)*(ftr(i,1)-ftrmeanx);
    ftrsgmy=ftrsgmy+(ftr(i,2)-ftrmeany)*(ftr(i,2)-ftrmeany);
    ftrsgmxy=ftrsgmxy+(ftr(i,1)-ftrmeanx)*(ftr(i,2)-ftrmeany);
end;
ftrsgmx=ftrsgmx/1000;
ftrsgmy=ftrsgmy/1000;
ftrsgmxy=ftrsgmxy/1000;
% 
MU_NEW = [ftrmeanx ftrmeany];
SIGMA_NEW = [ftrsgmx ,ftrsgmxy; ftrsgmxy, ftrsgmy];

% % ANSWER 6 :
tp = mvnpdf(ftr,MU_NEW,SIGMA_NEW);
figure;
colormap('hot');
hold on;
scatter(ftr(:,1),ftr(:,2),60,p,'filled');
colorbar;
