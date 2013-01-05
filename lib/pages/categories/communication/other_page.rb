# encoding: utf-8

class CategoryCommunicationOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/communication/other/"
  @category = "Телефоны и связь -> Другое"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end

class CategoryCommunicationHomeOfficePage < AdDetailsPage
  include PageObject

  @@url_suffix = "/communication/office-and-home/"
  @category = "Телефоны и связь -> Для дома и офиса"
end

class CategoryCommunicationMobilePage < AdDetailsPage
  include PageObject

  @@url_suffix = "/communication/mobile/"
  @category = "Телефоны и связь -> Мобильная связь"
end
