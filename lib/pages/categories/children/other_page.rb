# encoding: utf-8

class CategoryChildrenOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/children/other"
  @category = "Товары для детей -> Другие детские товары"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end

class CategoryChildrenBabyFurniturePage < AdDetailsPage
  include PageObject

  @@url_suffix = "/children/baby-furniture"
  @category = "Товары для детей -> Детская мебель"
end

class CategoryChildrenBabyWarePage < AdDetailsPage
  include PageObject

  @@url_suffix = "/children/babyware"
  @category = "Товары для детей -> Товары для малышей"
end
