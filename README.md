# SSH-VNC
# Как соединиться с VNC через SSH за NAT
1. Для настройки туннеля SSH испольуется PuTTy через статический айпи:порт (необходимо перенаправление открытого порта внутри ssh 5900(vnc)->Удалённый хост OpenSSH Windows 10,  например на (localhost:5901) -> Локальный хост)
2. Полсе открытия туннеля открываем vnc Соединение (Которое настроили через туннель с перенаправлением портов на localhost)
3. Для авторизации используются ключи, например rsa их нужно добавить в список на удалённом хосте.
   
# Автоматизированное подключение через bat
Запуск конфигурации из putty -> Запуск vnc -> Проверка на открытие процесса, если закрыто - выход. 



https://github.com/sxfour/SSH-VNC/assets/112577182/0b93de33-96cb-4a4e-a0c3-b40ccd352a81

