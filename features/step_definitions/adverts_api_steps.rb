# coding: utf-8

#TODO: Набивать сразу хэш, а не массив
def setfields(page_params)
  customfieldsarray = []
  page_params.hashes.each do |hash|
      case hash['parameter']
      when "Категория"
        @category = hash['value']
      when "Регион"
        @region = hash['value']
      when "Тип объявления"
        @advert_type = hash['value']
      when "E-mail"
        @mail = hash['value']
      when "Телефон"
        @phone = hash['value']
      when "Контактное лицо"
        @contact = hash['value']
      when "Модель"
        @model = hash['value']
        customfieldsarray << "model" 
        customfieldsarray << [hash['value']]
      when "Цена"
        @price = hash['value']
        customfieldsarray << "price" 
        customfieldsarray << [hash['value']]
      when "Валюта"
        @price = hash['value']
        customfieldsarray << "currency" 
        customfieldsarray << [hash['value']]
      when "Год выпуска"
        @year = hash['value']
        customfieldsarray << "car-year" 
        customfieldsarray << [hash['value']]
      when "Марка"
        customfieldsarray << "make"
        customfieldsarray << [hash['value']]
        @mark = hash['value']
      when "Тип кузова"
        customfieldsarray << "bodytype"
        customfieldsarray << [hash['value']]
        @body_type = hash['value']
      when "Тип трансмиссии"
        customfieldsarray << "transmittion"
        customfieldsarray << [hash['value']]
        @transmission = hash['value']
      end
  end
  @customfields = Hash[*customfieldsarray]
  puts @customfields
end

#TODO: Вложить поля токен, категория, регион и тип объявления в отдельный хеш и вынести отправку запроса в отдельный класс
#TODO: Сделать словарь значений полей.
То %{я подаю объявление со следующими параметрами:} do |page_params|
  setfields(page_params)
  response = HTTParty.post(API_URL + 'advertisements/advert',
   :body => {:auth_token => $token, :category => @category, :region => @region, :advert_type => @advert_type,
     :advertisement => {:mail => @mail, :phone => @phone, :contact => @contact, :custom_fields => @customfields}})
  @response = JSON.parse(response)
  puts @response
  checkforerrors(@response)
end

То %{я запоминаю идентификатор объявления} do
  @advertisement_id = response['id']
  puts @advertisement_id
end

То %{я проверяю, что в объявлении содержатся следующие данные:} do |page_params|
  response = HTTParty.get(API_URL + 'advertisements/advert/' + @advertisement_id)
  response = JSON.parse(response)
  puts response
  checkforerrors(@response)
  page_params.hashes.each do |hash|
    unless response.has_value?(hash['value']) && response['advertisement'].has_value?(hash['value']) && response['advertisement']['custom_fields'].has_value?(hash['value'])
      raise "В объявлении не найдено значение" + hash['value']
    end
  end
end
