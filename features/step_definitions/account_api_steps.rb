# coding: utf-8

То %{я проверяю данные в профиле} do 
  #@@response = HTTParty.get(API_URL + 'account', :body => {:auth_token => $token}) Вернуть после фикса
  @@response = HTTParty.get(API_URL + 'account/' + $token)
  @@response = JSON.parse(@@response)
  puts @@response
end

#TODO: Чтобы метод принимал hash значений
То %{я заполняю профиль пользователя следующими параметрами} do
  @@response = HTTParty.put(API_URL + 'account', :body => {:auth_token => $token, :user_info =>{:login => "auto_test", :email => "auto_test@yopmail.com", :title => "auto_test", :zip => nil, :city => "Minsk", :street => nil, :building => nil, :address => "", :phone => "123", :mobile => "", :contact => "", :fax => nil, :icq => nil, :site => nil, :logo =>nil, :dont_subscribe => false}})
  #TODO: Уточнить, нужно ли полностью заполнять массив user_info. UPDATE: Можно заполнять частично после фикса. Проверить, можно ли заполнять критичные поля типа login
  #@@response = HTTParty.put(API_URL + 'account', :body => {:auth_token => $token, :user_info =>{:login => "auto_test", :email => "auto_test@yopmail.com", :title => "auto_test", :zip => "220001"}})
  @@response = JSON.parse(@@response)
  puts @@response
end
