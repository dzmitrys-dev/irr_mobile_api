# encoding: utf-8

class CategoryElectronicsTechnicsOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/electronics-technics/other"
  @category = "Электроника и техника -> Другое"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end

class CategoryElectronicsTechnicsKitchenPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/electronics-technics/kitchen"
  @category = "Электроника и техника -> Кухонная техника"

end

class CategoryElectronicsTechnicsTVAudioDVDPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/electronics-technics/tv-audio-dvd"
  @category = "Электроника и техника -> Аудио, Видео"

end

class CategoryElectronicsTechnicsWashingMachinesPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/electronics-technics/washing-machines"
  @category = "Электроника и техника -> Стиральные машины"

end

class CategoryElectronicsTechnicsAutoTechnicsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/electronics-technics/auto-technics"
  @category = "Электроника и техника -> Техника для авто"

end

class CategoryElectronicsTechnicsIroningSewingEquipmentPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/electronics-technics/ironing-sewing-equipment"
  @category = "Электроника и техника -> Гладильное и швейное оборудование"

end

class CategoryElectronicsTechnicsClimaticTechnicsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/electronics-technics/climatic-technics"
  @category = "Электроника и техника -> Климатическая техника"

end

class CategoryElectronicsTechnicsGamesPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/electronics-technics/games"
  @category = "Электроника и техника -> Игры, игровые приставки"

end

class CategoryElectronicsTechnicsIndividualCarePage < AdDetailsPage
  include PageObject

  @@url_suffix = "/electronics-technics/individual-care"
  @category = "Электроника и техника -> Индивидуальный уход"

end
