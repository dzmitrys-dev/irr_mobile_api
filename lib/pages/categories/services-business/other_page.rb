# encoding: utf-8

class CategoryServicesBusinessOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/services-business/other"
  @category = "Услуги и деятельность -> Другое"

  irr_multi_select "Тип предложения", "offer"
end

class CategoryServicesBusinessBuildingPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/services-business/building"
  @category = "Услуги и деятельность -> Строительные и ремонтные услуги"

end

class CategoryServicesBusinessTransportationPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/services-business/transportation"
  @category = "Услуги и деятельность -> Транспортные услуги и аренда"

end

class CategoryServicesBusinessAnimalsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/services-business/animals"
  @category = "Услуги и деятельность -> Услуги для животных"

end
