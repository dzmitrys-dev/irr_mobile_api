# coding: utf-8

#TODO: создать хэш кастом-филдов и наполнять его в зависимости, какие указаны в объявлении. Сделать словарь значений полей.
То %{я подаю объявление со следующими параметрами:} do |page_params|
  customfieldsarray = []
  page_params.hashes.each do |hash|
      case hash['parameter']
      when "Категория"
        @category = hash['value']
      when "Регион"
        @region = hash['value']
        puts @region
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
        customfieldsarray << "transmission"
        customfieldsarray << hash['value']
        @transmission = hash['value']
      end
  end
  customfields = Hash[*customfieldsarray]
  #puts customfields
  #TODO: Передавать кастом-филды не через пару name, value, a по типу :transmission => "вариатор"
  response = HTTParty.post(API_URL + 'advertisements/advert', :body => {:auth_token => $token, :category => "classified/cars/passenger/used/",
     :region => @region, :advert_type => "auto_sprobegom",
      :advertisement => {:custom_fields => {:name => "model", :value => @model, :name => "price", :value => @price, :name => "car-year",
         :value => @year, :name => "make", :value => @mark, :name => "bodytype", :value => @body_type, :name => "transmission", :value => @transmission}}})
  response = JSON.parse(response)
  puts response
  checkforerrors(response)
end
