%start
format long

dataRumah=xlsread('RumahBintaro_Olah2_ori_simple.xlsx',1);
[numrow numcol]=size(dataRumah);
Ystart=dataRumah(:,1);
Y=Ystart./1e6;
Xstart=dataRumah(:,2:end);
%X=dataRumah(:,2:end);
X=[Xstart ones(numrow,1)];
[B Bint R Rint stats]=regress(Y,X);
lm=LinearModel.fit(X,Y,'linear')

mld1=step(lm,'NSteps',100)
%stepwise(X,Y)