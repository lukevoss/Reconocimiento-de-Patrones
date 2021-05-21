function [] = ECGcsv2mat(train_csv, test_csv)
%Read the data out of the mitbih.csv files and save the workspace
data = csvread(train_csv);
test = csvread (test_csv);
xtrn=data(:,1:end-1);
ytrn=data(:,end);
xtst=test(:,1:end-1);
ytst=test(:,end);
clearvars data test test_csv train_csv;
save('datosECG');
end

