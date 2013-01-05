# encoding: utf-8

class CategoryContactsAnnouncesOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/contacts-announces/other"
  @category = "Знакомства и общение -> Другое"
end

class CategoryContactsAnnouncesRelationsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/contacts-announces/relations"
  @category = "Знакомства и общение -> Знакомства"
end

class CategoryContactsAnnouncesAnnouncesPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/contacts-announces/announces"
  @category = "Знакомства и общение -> Сообщения"
end
