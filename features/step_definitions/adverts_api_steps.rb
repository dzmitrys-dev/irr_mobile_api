# coding: utf-8

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
      when "Модель"
        @model = hash['value']
        customfieldsarray << "model" 
        customfieldsarray << hash['value']
      when "Цена"
        @price = hash['value']
        customfieldsarray << "price" 
        customfieldsarray << hash['value']
      when "Валюта"
        @price = hash['value']
        customfieldsarray << "currency" 
        customfieldsarray << hash['value']
      when "Год выпуска"
        @year = hash['value']
        customfieldsarray << "car-year" 
        customfieldsarray << hash['value']
      when "Марка"
        customfieldsarray << "make"
        customfieldsarray << hash['value']
        @mark = hash['value']
      when "Тип кузова"
        customfieldsarray << "bodytype"
        customfieldsarray << hash['value']
        @body_type = hash['value']
      when "Тип трансмиссии"
        customfieldsarray << "transmittion"
        customfieldsarray << hash['value']
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
   :body => {:auth_token => $token, :category => "classified/cars/passenger/used/",
     :region => @region, :advert_type => "auto_sprobegom",
      :advertisement => {:custom_fields => @customfields}})
  response = JSON.parse(response)
  puts response
  checkforerrors(response)
end
