# coding: utf-8

То %{проверяю данные в профиле} do 
  #@@response = HTTParty.get(API_URL + 'account', :body => {:auth_token => $token}) Вернуть после фикса
  @@response = HTTParty.get(API_URL + 'account/' + $token)
  @@response = JSON.parse(@@response)
end