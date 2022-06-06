vyb=zeros(49);
ruk=zeros(49);
isp=zeros(49);
for i=1:49
filename=[fileExcel, '.xlsx'];
vyb(i)=xlsread(filename, 29, B2:B50);
if vyb(i)=="Руководитель"
ruk(i)=xlsread(filename, 29, Ai);
end
if vyb(i)=="Исполнитель"
isp(i)=xlsread(filename, 29, Ai);
end
end
filename2=[fileOutput, '.xlsx'];
xlswrite(filename2, "Роль", A1);
xlswrite(filename2, "Люди", B1);
xlswrite(filename2, "Руководители", A2);
xlswrite(filename2, "Исполнители", A3);
for j=1:49
xlswrite(filename2, ruk(i)+", ", B2)
xlswrite(filename2, isp(i)+", ", B3)
end