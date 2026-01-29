
Домашнее задание по теме «Основы Terraform. Yandex Cloud» - Машаев Роман

Задание 1

ОТВЕТ:
В файле providers.tf: 
- добавлена версия провайдера. В исходном коде строка: version = "~> 0.181.0" отсутствовала.
Без указания версии может быть проблема совместимости.
- заменен жесткий путь на переменную (service_account_key_file = var.service_account_key_file)
  Путь "~/.authorized_key.json" может не существовать.

В файле variables.tf:
- добвалена новая переменная для ключа сервисного аккаунта. Она нужна для работы исправления в providers.tf

В файле main.tf:
- Опечатка в platform_id  Было: platform_id = "standart-v4" - cтало: platform_id = "standard-v2", вместо буквы d была буква t 
(как в примере на семинаре). Также изменил на standard-v2, т.к. данная платформа поддерживает чисол ядер 2 (1 тоже изменил на 2). 
4 платформы сейчас нет, поэтому сменил на 2-ю.

![Скриншот из ЛК Yandex Cloud с созданной ВМ](https://github.com/Mazaich/terraform-homeworks2/blob/main/Screenshot_1.png?raw=true)
![Скриншот с IP адресом с выводом результата кломанды curl ifconfig.me](https://github.com/Mazaich/terraform-homeworks2/blob/main/Screenshot_2026-01-27_16_26_42.png?raw=true)

Параметры preemptible = true (прервываемая ВМ) и core_fraction = 5 (гарантированная доля vCPU 5%) позволяют значительно снизить стоимость ВМ 
(до 80% экономии), что критически важно для обучения с ограниченным бюджетом. Они учат работать с непостоянной инфраструктурой и оптимизировать
 ресурсы, формируя навыки, необходимые для реальных облачных проектов.


Задание 2

ОТВЕТ:
![Скриншот1 в внесенными переменными в variables.tf](https://github.com/Mazaich/terraform-homeworks2/blob/main/Screenshot_2026-01-28_15_32_09.png?raw=true)
![Скриншот2 в внесенными переменными в variables.tf](https://github.com/Mazaich/terraform-homeworks2/blob/main/Screenshot_2026-01-28_15_32_22.png?raw=true)
![Сриншот с внесенными с замененными хардкод значениями на переменные](https://github.com/Mazaich/terraform-homeworks2/blob/main/Screenshot_2026-01-28_15_33_02.png?raw=true)
![Скриншот подтверждения, что terraform plan сработал без изменений](https://github.com/Mazaich/terraform-homeworks2/blob/main/Screenshot_2026-01-28_15_33_48.png?raw=true)


Задание 3

ОТВЕТ: 
![Скриншот с созданной второй ВМ](https://github.com/Mazaich/terraform-homeworks2/blob/main/Screenshot_2.png?raw=true)

Задание 4
![Скриншот выаоды комманды terraform outptu]()

Задание 5
![Скриншот вывода файла locals.tf]()
![Скриншот вывыда команды terraform plan с отсутствием изменений]()
![Скриншот вывода команды nthhaform apply с отсутствием изменений]()




