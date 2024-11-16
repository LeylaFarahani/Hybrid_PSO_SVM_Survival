function [somnegativa] = geneticpatternmod(cromosoma)
load 'dataFarahani.mat'
 xs=numbers;
 cv = cvpartition(size(xs,1),'HoldOut',0.21);
    X = xs(cv.training,2:end);
    Y=xs(cv.training,1);
    Xt = xs(cv.test,2:end);
    Yt=xs(cv.test,1);



newf=[];
cromosoma    = approx_quantization(cromosoma);
% disp('Current parameters:');
% disp(cromosoma);
somnegativa=0;
% X=X2(:,2:end);

% Xt=Xt2(:,2:end);
%Yt=Testingset(:,1)+1;
%--------------------------------
t=1;p=1;ff=[];
for t=1: 1069
    if cromosoma(t)==1 
        XTest(:,p)=Xt(:,t);
        Xtrain(:,p)=X(:,t);
        p=p+1;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k=0;
 mdl = fitrsvm(Xtrain,Y,'KernelFunction','rbf');
Group = predict(mdl,XTest);
e = (Yt-Group).^2;
SI = sum(e)/size(Group,1);
Rsq= 1- sum(Yt-Group).^2 /sum((Yt-mean(Yt)).^2)
Mae= mean((abs(Yt-Group)));

%end
%end

sum(cromosoma )

somnegativa=SI
