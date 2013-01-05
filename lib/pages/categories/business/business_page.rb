# encoding: utf-8

class CategoryBusinessPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/business"
  @category = "Бизнес и партнерство"
end

class CategoryBusinessServicesPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/business/business-services"
  @category = "Бизнес и партнерство -> Бизнес услуги"
end

class CategoryBusinessbusinessPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/business/business-services"
  @category = "Бизнес и партнерство -> Готовый бизнес"
end

class CategoryBusinessbusinessPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/business/business-services"
  @category = "Бизнес и партнерство -> Готовый бизнес"
end

class CategoryBusinessCollaborationPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/business/collaboration"
  @category = "Бизнес и партнерство -> Партнерство и сотрудничество"
end

class CategoryBusinessTaraMaterialsPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/business/tara-materials"
  @category = "Бизнес и партнерство -> Сырье, тара, товары оптом"
end
