# encoding: utf-8

class CategoryGardenOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/garden/other"
  @category = "Все для дачи -> Другое"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end

class CategoryGardenEquipmentPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/garden/equipment"
  @category = "Все для дачи -> Садовая техника"
end

class CategoryGardenToolsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/garden/tools"
  @category = "Все для дачи -> Садовые инструменты, инвентарь"
end

class CategoryGardenGardeningPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/garden/gardening"
  @category = "Все для дачи -> Товары для садоводства"
end

class CategoryGardenElementsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/garden/elements"
  @category = "Все для дачи -> Садовая мебель, сантехника, декор"
end

class CategoryGardenGrillPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/garden/grill"
  @category = "Все для дачи -> Грили, мангалы"
end

class CategoryGardenBanyPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/garden/bany"
  @category = "Все для дачи -> Для бань и саун"
end

class CategoryGardenFireplacePage < AdDetailsPage
  include PageObject

  @@url_suffix = "/garden/fireplace"
  @category = "Все для дачи -> Камины, печи"
end

class CategoryGardenPoolPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/garden/pool"
  @category = "Все для дачи -> Бассейны и принадлежности"
end
