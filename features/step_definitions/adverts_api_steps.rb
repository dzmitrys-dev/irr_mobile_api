# coding: utf-8

То %{я подаю объявление со следующими параметрами:} do |page_params|
  @@response = HTTParty.post(API_URL + 'advertisements/advert', :body => {:auth_token => $token, :category => "", :region => "", :advertisement => {}})
  @@response = JSON.parse(@@response)
  puts @@response
  page_params.hashes.each do |hash|
      case hash['parameter']
      when "Категория"
        category = hash['value']
      when "Регион"
        region = hash['value']
      end
  end
end
