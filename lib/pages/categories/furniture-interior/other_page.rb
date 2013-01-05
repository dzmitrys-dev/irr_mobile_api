# encoding: utf-8

class CategoryFurnitureInteriorOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/furniture-interior/other"
  @category = "Мебель, интерьер, обиход -> Другая мебель"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end

class CategoryFurnitureInteriorHomeStuffPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/furniture-interior/home-stuff"
  @category = "Мебель, интерьер, обиход -> Предметы обихода"

end

class CategoryFurnitureInteriorLivingRoomPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/furniture-interior/living-room"
  @category = "Мебель, интерьер, обиход -> Мебель для гостиной"

end

class CategoryFurnitureInteriorUpholsteredFurniturePage < AdDetailsPage
  include PageObject

  @@url_suffix = "/furniture-interior/upholstered-furniture"
  @category = "Мебель, интерьер, обиход -> Мягкая мебель"

end

class CategoryFurnitureInteriorBedroomPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/furniture-interior/bedroom"
  @category = "Мебель, интерьер, обиход -> Мебель для спальни"

end

class CategoryFurnitureInteriorKitchenPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/furniture-interior/kitchen"
  @category = "Мебель, интерьер, обиход -> Мебель для кухни"

end

class CategoryFurnitureInteriorHallwayPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/furniture-interior/hallway"
  @category = "Мебель, интерьер, обиход -> Мебель для прихожей"

end

class CategoryFurnitureInteriorInteriorPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/furniture-interior/interior"
  @category = "Мебель, интерьер, обиход -> Интерьер"

end
