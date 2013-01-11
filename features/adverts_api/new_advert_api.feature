# language: ru
# encoding: utf-8

Функционал: Подача объявления

  Сценарий: Логин обычного пользователя
    Когда я вхожу под пользователем с ролью "Обычный пользователь 1" посредством API
      То я запоминаю авторизационный токен
      * я подаю объявление со следующими параметрами:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Тип объявления             | auto_sprobegom                  |
        | Модель                     | A4                              |
        | Цена                       | 300000                          |
        | Валюта                     | RUR                             |
        | Год выпуска                | 2003                            |
        | Марка                      | Audi                            |
        | Тип кузова                 | купе                            |
        | Тип трансмиссии            | вариатор                        |
        | E-mail                     | autor@irr.ru                    |
        | Телефон                    | +7999999999                     |
        | Контактное лицо            | Автор объявления                |
      * я запоминаю идентификатор объявления
      * я проверяю, что в объявлении содержатся следующие данные:
        | parameter                  | value                           |
        | Категория                  | classified/cars/passenger/used/ |
        | Регион                     | russia/moskva-gorod/            |
        | Тип объявления             | auto_sprobegom                  |
        | Модель                     | A4                              |
        | Цена                       | 300000                          |
        | Валюта                     | RUR                             |
        | Год выпуска                | 2003                            |
        | Марка                      | Audi                            |
        | Тип кузова                 | купе                            |
        | Тип трансмиссии            | вариатор                        |
        | E-mail                     | autor@irr.ru                    |
        | Телефон                    | +7999999999                     |
        | Контактное лицо            | Автор объявления                |