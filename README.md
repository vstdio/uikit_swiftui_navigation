# Использование UIKit навигации в SwiftUI приложении
Материал взят [отсюда](https://www.youtube.com/watch?v=fba0UDL3qlc)

## SwiftUI Navigation
### Плюсы
* Проще использовать @EnvironmentObject для того чтобы передавать нужные объекты вниз по иерархии
* Мало boilerplate-кода
* Можно представить навигационный стек в виде простого массива
### Минусы
* Корневой экран не является частью стека
* Неправильная работа с реактивщиной может повлечь за собой странную работу навигации
* NavigationStack доступен с iOS 16

## UIKit Navigation
### Плюсы
* Старый добрый UIKit
### Минусы
* Не "нативное" решение (в плане того что для SwiftUI подразумевается использование NavigationStack, а не UINavigationController в паре с UIHostingController'ами)
* Много boilerplate-кода
* Проблемы с навигационным баром на экранах SwiftUI, для устранения которых нужны костыли
