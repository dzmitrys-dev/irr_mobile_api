# encoding: utf-8

class CategoryComputerDevicesOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/other/"
  @category = "Компьютерная техника -> Другое"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
end

class CategoryComputerDevicesNotebooksPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/notebooks/"
  @category = "Компьютерная техника -> Ноутбуки"
end

class CategoryComputerDevicesPDAPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/pdas_communicators/"
  @category = "Компьютерная техника -> КПК"
end

class CategoryComputerDevicesMultimediaPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/multimedia/"
  @category = "Компьютерная техника -> Мультимедиа"
end

class CategoryComputerDevicesMonitorsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/multimedia/"
  @category = "Компьютерная техника -> Мониторы"
end

class CategoryComputerDevicesPrintersPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/printers/"
  @category = "Компьютерная техника -> Принтеры, сканеры, копиры"
end

class CategoryComputerDevicesFlashPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/flash_drives/"
  @category = "Компьютерная техника -> Flash-накопители"
end

class CategoryComputerDevicesConsumablesPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/consumables/"
  @category = "Компьютерная техника -> Расходные материалы"
end

class CategoryComputerDevicesHardwarePage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/hardware/"
  @category = "Компьютерная техника -> Комплектующие"
end

class CategoryComputerDevicesSoftwareGamesPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/software_games/"
  @category = "Компьютерная техника -> Программное обеспечение и игры"
end

class CategoryComputerDevicesPowerPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/computers-devices/power/"
  @category = "Компьютерная техника -> Источники питания"
end
