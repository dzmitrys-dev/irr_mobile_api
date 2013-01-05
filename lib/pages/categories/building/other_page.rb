# encoding: utf-8

class CategoryBuildingOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/building/other"
  @category = "Строительство и ремонт -> Другое"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end

class CategoryBuildingInstrumentsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/building/instruments"
  @category = "Строительство и ремонт -> Инструменты"
end

class CategoryBuildingElementsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/building/elements"
  @category = "Строительство и ремонт -> Двери, окна, балконы, лестницы"
end

class CategoryBuildingMaterialsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/building/materials"
  @category = "Строительство и ремонт -> Материалы"
end

class CategoryBuildingPlumbingPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/building/plumbing"
  @category = "Строительство и ремонт -> Сантехника"
end

class CategoryBuildingElectricsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/building/electrics"
  @category = "Строительство и ремонт -> Электрика"
end

class CategoryBuildingHeatingPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/building/heating"
  @category = "Строительство и ремонт -> Отопление"
end
