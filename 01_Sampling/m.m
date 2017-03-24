%WARM UP TASKS
% ANSWER 1:
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

% ANSWER 3 :
munew=[166 166];
p = mvnpdf(r,munew,sigma);
colormap('jet');
scatter(r(:,1),r(:,2),80,p,'filled');

%ANSWER 4 :
A = [1 0;0 6];
b= [6;6];

tr=zeros(2,1000);
tr=r.';

trr=zeros(2,1000);

for i=1:1000
    trr(:,i)=A*tr(:,i);
    trr(:,i)=trr(:,i)+b;
end;

ftr = zeros(1000,2);
ftr=trr.';

% ANSWER 5 :
ftrmeanx=0;
ftrmeany=0;
for i=1:1000
    ftrmeanx=ftrmeanx + r(i,1);
    ftrmeany=ftrmeany + r(i,2);
 end;
ftrmeanx=ftrmeanx/1000;
ftrmeany=ftrmeany/1000;

ftrsgmx=0;
ftrsgmy=0;
ftrsgmxy=0;
for i=1:1000
    ftrsgmx=ftrsgmx+(r(i,1)-ftrmeanx)*(r(i,1)-ftrmeanx);
    ftrsgmy=ftrsgmy+(r(i,2)-ftrmeany)*(r(i,2)-ftrmeany);
    ftrsgmxy=ftrsgmxy+(r(i,1)-ftrmeanx)*(r(i,2)-ftrmeany);
end;
ftrsgmx=ftrsgmx/1000;
ftrsgmy=ftrsgmy/1000;
ftrsgmxy=ftrsgmxy/1000;

% ANSWER 6 :
tp = mvnpdf(r,munew,sigma);
colormap('jet');
scatter(r(:,1),r(:,2),80,tp,'filled');