data = readtable('Data_18032020.xlsx')
data = renamevars(data,["x_______","x___", "x____________", "x_______________________", "x__________________", "x__________"],   ["Фамилия", "Имя", "дата рождения", "Кол-во авторов внутренних", "Кол-во всего авторов","Публикация"])

today = datetime
t = today.Year - data{:,"дата рождения" }.Year  
data.data = t

k = data{:,"Кол-во авторов внутренних" } ./ data{:,"Кол-во всего авторов" }
data.k = k

data = renamevars(data,["data","k" ],   ["Возраст", "Коэффициент"])
filename = 'newData.xlsx';
writetable(data,filename,'Sheet',1,'Range','A1')