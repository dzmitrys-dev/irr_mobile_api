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

#TODO: Доработать метод
Когда %{я отсылаю логин и пароль роли "$role"} do |role|
  credentials = get_login_and_password_for_role(role)
  puts "DEBUG: Логин: #{credentials['login']}, пароль '#{credentials['password']}'"
  #response = HTTParty.get('http://ag.regions.devel.ps/mobile_api/1.0/account/login')
  response = HTTParty.post('http://ag.regions.devel.ps/mobile_api/1.0/account/login', :body => {:username => credentials['login'], :password => credentials['password']})
  puts response.body
  puts response.code
  response = JSON.parse(response)
  if response['user_info'].has_value?(credentials['login']);
    puts "YESSSSSSSSSSS"
  else
    puts "NOOOOOOOO"
  end
  puts response
  @current_user_name = credentials['username']
end

