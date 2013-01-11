# coding: utf-8

#imagebase64 = ["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"]
image = [File.new("features/step_definitions/adverts/advert_image.jpg", "r")]

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
end

#TODO: Вложить поля токен, категория, регион и тип объявления в отдельный хеш и вынести отправку запроса в отдельный класс
#TODO: Сделать словарь значений полей.
То %{я подаю объявление со следующими параметрами:} do |page_params|
  setfields(page_params)
  response = HTTParty.post(API_URL + 'advertisements/advert',
   :body => {:auth_token => $token, :category => @category, :region => @region, :advert_type => @advert_type, :images => image,
     :advertisement => {:mail => @mail, :phone => @phone, :contact => @contact, :custom_fields => @customfields}})
  @response = JSON.parse(response)
  puts @response
  checkforerrors(@response)
  puts imagebase64
end

То %{я редактирую в объявлении следующие данные:} do |page_params|
  setfields(page_params)
  response = HTTParty.put(API_URL + 'advertisements/' + @advertisement_id,
   :body => {:auth_token => $token,
     :advertisement => {:custom_fields => @customfields}})
  @response = JSON.parse(response)
  puts @response
  checkforerrors(@response)
end

То %{я запоминаю идентификатор объявления} do
  puts @response
  if @response['advertisement']['id'].nil?
    raise "Невозможно получить ID объявления. " + @response.to_s
  end
  @advertisement_id = @response['advertisement']['id']
  puts @advertisement_id
end

То %{я получаю объявление с заданным идентификатором} do
  response = HTTParty.get(API_URL + 'advertisements/advert/' + @advertisement_id)
  @response = JSON.parse(response)
  puts @response
  checkforerrors(@response)
end

То %{я проверяю, что в объявлении содержатся следующие данные:} do |page_params|
  page_params.hashes.each do |hash|
    unless @response.has_value?(hash['value']) && @response['advertisement'].has_value?(hash['value']) && @response['advertisement']['custom_fields'].has_value?(hash['value'])
      raise "В объявлении не найдено значение: " + hash['value'] + " Полученный ответ: " + @response.to_s
    end
  end
end

То %{я удаляю объявление} do
  response = HTTParty.delete(API_URL + 'advertisements/advert/' + @advertisement_id, :body => {:auth_token => $token})
  response = JSON.parse(response)
  puts response
  checkforerrors(response)
end

То %{я добавляю объявление в избранное} do
  response = HTTParty.post(API_URL + 'advertisements/advert/' + @advertisement_id + '/favorite', :body => {:auth_token => $token})
  response = JSON.parse(response)
  puts response
  checkforerrors(response)
end

То %{я удаляю объявление из избранного} do
  response = HTTParty.delete(API_URL + 'advertisements/advert/' + @advertisement_id + '/favorite', :body => {:auth_token => $token})
  response = JSON.parse(response)
  puts response
  checkforerrors(response)
end

То %{я получаю список избранных объявлений} do
  response = HTTParty.get(API_URL + 'advertisements/favorites', :body => {:auth_token => $token})
  @response = JSON.parse(response)
  puts @response
  checkforerrors(@response)
end

То %{я проверяю, что в списке избранных объявлений есть объявление с таким идентификатором} do
  unless @response['advertisements'].has_value?(@advertisement_id)
    raise "Объявление с данным идентификатором не найдено списке избранных. Полученный ответ: " + @response
  end
end

То %{я проверяю, что в списке избранных объявлений нет объявления с таким идентификатором} do
  if @response['advertisements'].has_value?(@advertisement_id)
    raise "Объявление с данным идентификатором присутствует списке избранных. Полученный ответ: " + @response
  end
end

#TODO: указать список того, что должен вернуть запрос в тесте для массивов продуктов и действий
То %{я получаю список платных продуктов для объявления} do
  response = HTTParty.get(API_URL + 'advertisements/advert/' + @advertisement_id + '/products')
  @response = JSON.parse(response)
  puts @response
  checkforerrors(@response)
end

То %{я получаю список бесплатных действий над объявлением} do
  response = HTTParty.get(API_URL + 'advertisements/advert/' + @advertisement_id + '/actions')
  @response = JSON.parse(response)
  puts @response
  checkforerrors(@response)
end

#TODO: Добавить активацию, деактивацию, продление, поднятие, выделение, назначение премиума

То %{я повышаю рейтинг объявления} do
  response = HTTParty.post(API_URL + 'advertisements/advert' + @advertisement_id + '/vote', :body => {:auth_token => $token})
  @response = JSON.parse(response)
  puts @response
  checkforerrors(@response)
end

То %{я понижаю рейтинг объявления} do
  response = HTTParty.delete(API_URL + 'advertisements/advert' + @advertisement_id + '/vote', :body => {:auth_token => $token})
  @response = JSON.parse(response)
  puts @response
  checkforerrors(@response)
end