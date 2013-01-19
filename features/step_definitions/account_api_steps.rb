# coding: utf-8

То %{я запоминаю данные профиля} do 
  #@@response = HTTParty.get(API_URL + 'account', :body => {:auth_token => $token}) Вернуть после фикса
  response = HTTParty.get(API_URL + 'account/' + $token)
  response = JSON.parse(response)
  puts response
  checkforerrors(response)
end

#TODO: Чтобы метод принимал hash значений
То %{я заполняю профиль пользователя случайными данными} do
  #TODO: Проверить, можно ли заполнять критичные поля типа login
  phone = 1000000 + Random.rand(999999)
  mobile = 1000000 + Random.rand(999999)
  @phone, @mobile = "+" + phone.to_s,"+" +  mobile.to_s
  puts "Телефон: " + @phone
  puts "Мобильный: " + @mobile
  response = HTTParty.put(API_URL + 'account', :body => {:auth_token => $token, :user_info =>{:phone => @phone, :mobile => @mobile}})
  @response = JSON.parse(response)
  puts @response
  checkforerrors(@response)
end

То %{в профиле сохранены введенные данные} do
  unless @response['user_info']['phone'] == @phone && @response['user_info']['mobile'] == @mobile
    raise "Данные в профиле не соответствуют заполненным: " + @response.to_s
  end
end
