# encoding: utf-8

def select_active_passport
  credentials = YAML::load(File.open(File.dirname(__FILE__)+'/../credentials.yml'))

  # Ищем нужный паспорт, актуальный для площадки BASE_URL
  record_name = BASE_URL.gsub("http://",'')
  passport = credentials.select{ |pass| 
    credentials[pass].has_key?("sites") and 
    credentials[pass]["sites"].include?(record_name)}
  raise "Пароли и логины не найдены для данного сервера" if passport.nil?
  passport.first[1]
end

def get_ssh_credentials
  passport = select_active_passport
  passport[BASE_URL.gsub("http://",'')]["ssh"]
end

def get_login_and_password_for_role(role)
  passport = select_active_passport

  # Запоминаем адрес паспорта
  @passport_address = passport['address']

  # Если у сайта есть элемент users, то используем ТОЛЬКО этих пользователей
  if passport.has_key?(BASE_URL.gsub("http://",''))
    passport[BASE_URL.gsub("http://",'')]["users"][role]
  else
    # Иначе берем из ключа users для паспорта
    passport["users"][role]
  end
end

#TODO: привести к DRY часть HTTParty.post(API_URL
Когда %{я вхожу под пользователем с ролью "$role" посредством API} do |role|
  credentials = get_login_and_password_for_role(role)
  $credentials = credentials
  puts "DEBUG: Логин: #{credentials['login']}, пароль '#{credentials['password']}'"
  @@response = HTTParty.post(API_URL + 'account/login', :body => {:username => credentials['login'], :password => credentials['password']})
  @@response = JSON.parse(@@response)
  puts @@response
end

То %{я запоминаю авторизационный токен} do 
  $token = @@response['auth_token']
  puts "Авторизационный токен: " + $token
end

То %{в ответе должно быть указано имя пользователя} do 
  unless @@response['user_info'].has_value?($credentials['login']);
    raise "Невозможно получить данные пользователя роли " + role + " DEBUG: "
    puts @@response
  end
end

То %{в ответе отображен статус интернет-партнера} do 
  unless @@response['is_partner'] = true
    raise "Данный пользователь не является интернет-партнером"
  end
end

То %{в ответе отображен статус обычного пользователя} do 
  unless @@response['is_partner'] = true
    raise "Данный пользователь не является обычным пользователем"
  end
end
