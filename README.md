# matveeva-s_infra

# Выполнено ДЗ №3

 - [x] Основное ДЗ
 - [x] Допзадание с варинатом подключения к `someinternalhost`
 - [ ] Допзадание с ssl сертификатом для виртуалки с бастионом

## В процессе сделано:
 - Созданы 2 виртуальные машины (`bastion` и `someinternalhost`) в Yandex Cloud
 - Создана пара ssh-ключей для доступа к этим виртуалкам
 - Проверено подключение к `someinternalhost` через `bastion` (ниже будет про способ хождение напрямую)
 - На виртуалку `bastion` после долгих мучений установлена mongo
 - Запущен VPN сервис, проведена регистрация тестовго клиента и огранизации
 - Проверена работоспособность VPN, проверено хождение в `someinternalhost` напрямую со включенным ВПН

## IP-адреса виртуалок:
 bastion_IP = 51.250.94.221 someinternalhost = 10.128.0.34

## Допзадание с подключением к `someinternalhost`

Как вариант, вынести `bastion` и `someinternalhost` в `.ssh/config` своего рабочего пространство, и указать `bastion` как ProxyJump для прохода на `someinternalhost`. У меня это выглядит так:

```
Host bastion
  HostName 51.250.74.84
  User s-matveeva
  IdentityFile ~/.ssh/yandex_cloud/yandex_cloud_key
Host someinternalhost
  Hostname 10.128.0.34
  User s-matveeva
  IdentityFile ~/.ssh/yandex_cloud/yandex_cloud_key
  ProxyJump bastion
```
