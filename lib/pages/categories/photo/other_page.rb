# encoding: utf-8

class CategoryPhotoOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/photo/other"
  @category = "Фото, оптика -> Другое"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end

class CategoryPhotoPhototechnicsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/photo/phototechnics"
  @category = "Фото, оптика -> Фототехника"
end

class CategoryPhotoOpticsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/photo/optics"
  @category = "Фото, оптика -> Оптика"
end
