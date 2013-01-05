# encoding: utf-8

class CategorySportsTourismOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/sports-tourism/other"
  @category = "Спорт, туризм, отдых -> Другое"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "type"
end

class CategorySportsTourismSportsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/sports-tourism/sports"
  @category = "Спорт, туризм, отдых -> Спортивные игры, виды спорта"

end

class CategorySportsTourismTourismPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/sports-tourism/tourism"
  @category = "Спорт, туризм, отдых -> Снаряжение для рыбалки, охоты, активного отдыха"

end

class CategorySportsTourismFitnessPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/sports-tourism/fitness"
  @category = "Спорт, туризм, отдых -> Фитнес, атлетика, борьба"

end
