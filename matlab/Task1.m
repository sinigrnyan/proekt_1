
data = readtable('fileExcel.xlsx')

data = renamevars(data,["x___","x____" ],   ["Имя", "Роль"])

T = table('Size',[2 2],'VariableTypes',{'string','cell'},'VariableNames',{'Роли','Люди'})

c1 = cell.empty
c2 = cell.empty
p = ["Руководитель"; "Исполнитель"]
for i = 1:5
    if (cell2mat(data{i,"Роль" }) == "Руководитель")
        c1(end+1) = table2cell(data(i,"Имя" ))
    else
        c2(end+1) = table2cell(data(i,"Имя" ))
    end
end
c = {c1;c2}

tab = table(p,c)
tab = renamevars(tab,["p","c" ],   ["Роли", "Люди"])
filename = 'outFile.xlsx';
writetable(tab,filename,'Sheet',1,'Range','A1')
