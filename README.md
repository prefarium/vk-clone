# VK Clone
Это веб приложение является копией ВК, цель которого воспроизвести функционал социальной сети на Rails как можно ближе к оригиналу (а по возможности и улучшить), при этом не копируя графический дизайн

В разделе "Прогресс разработки" кратко перечислены все планируемые функции. Те из них, что уже реализованы - отмечены. Если вы хотите прочесть подробнее о таких функциях - переходите к разделу "Подробно о функционале"

## Использовано
* Ruby v2.7.1
* Rails v6.0.x
* Postgresql
* Bulma CSS Framework v0.9.0
* HAML v2.0

## Прогресс разработки
### Система
- [x] Аутентификация через [devise](https://rubygems.org/gems/devise)
- [ ] Глобальный поиск по сайту
- [ ] Сохранение черновика, если какая-либо форма не отправлена
- [ ] Отображение онлайн-статуса пользователя
- [ ] Возможность добавляться в друзья
- [ ] Версия сайта на русском
- [ ] Приём и пересылка платежей

### Страницы пользователя и их содержание
- [x] Личная стена у каждого пользователя, на которой можно постить
- [ ] Новостная лента
- [ ] Страница с настройками аккаунта
- [ ] Страница со статистикой аккаунта
- [ ] Аватарки
- [ ] Фотоальбомы

### Посты
- [ ] Возможность удалить свои посты откуда угодно и любые посты со своей стены
- [ ] Возможность запретить другим пользователям постить на своей стене
- [ ] Возможность упоминать других пользователей в своих постах и комментариях
- [ ] Разметка текста
- [ ] Лайки
- [ ] Репосты
- [ ] Архив
- [ ] Отложенная публикация
- [ ] Прикрепление файлов
- [ ] Отображение времени публикации поста или комментария по местному времени

### Комментарии
- [x] Комментирование постов
- [ ] Комментирование комментариев
- [ ] Удаление комментариев
- [ ] Запрет комментирования на своей стене
- [ ] Лайки
- [ ] Репосты

### Чат
- [ ] Переписка друг с другом в реальном времени
- [ ] Прикрепление файлов к сообщениям
- [ ] Уведомления
- [ ] Групповой чат в реальном времени
- [ ] Видеозвонки
- [ ] Поиск по чатам

## Подробно о функционале
### Система
Система аутентификации написана с использованием [devise](https://rubygems.org/gems/devise). Использовались слдующие модули (подробнее о них вы можете прочесть в документации [devise](https://rubygems.org/gems/devise)):

* :database_authenticatable
* :registerable
* :recoverable
* :rememberable
* :validatable

### Старницы пользователя и их содержание
Каждый пользователь имеет свою собственную стену, расположенную на его главной странице, где он может постить любые текстовые заметки. Также разрешается постить и на чужих стенах

### Посты
Как уже было сказано, посты можно оставлять на стене любого пользователя. Каждый пост начинается с имени его автора. Имя интерактивно - при нажании откроется страница того самого автора

### Комментарии
В левом нижнем углу любого поста есть кнопка с иконкой комментария. Если к посту есть хотя бы один комментарий, то около иконки отображается их обшее количество. При нажатии на эту кнопку открывается страница поста, где отображены все комментарии, и есть возможность оставить свой

Как и в постах, имена авторов комментариев интерактивны

### Чат
