vyb=zeros(49);
ruk=zeros(49);
isp=zeros(49);
for i=1:49
filename=[fileExcel, '.xlsx'];
vyb(i)=xlsread(filename, 29, B2:B50);
if vyb(i)=="������������"
ruk(i)=xlsread(filename, 29, Ai);
end
if vyb(i)=="�����������"
isp(i)=xlsread(filename, 29, Ai);
end
end
filename2=[fileOutput, '.xlsx'];
xlswrite(filename2, "����", A1);
xlswrite(filename2, "����", B1);
xlswrite(filename2, "������������", A2);
xlswrite(filename2, "�����������", A3);
for j=1:49
xlswrite(filename2, ruk(i)+", ", B2)
xlswrite(filename2, isp(i)+", ", B3)
end