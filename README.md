# matveeva-s_infra
matveeva-s Infra repository

Homework №5:
Самостоятельное + допзадание:

Как вариант, вынести `bastion` и `someinternalhost` в `.ssh/config` своего рабочего пространство, и указать `bastion` как ProxyJump для прохода на `someinternalhost`. У меня это выглядит так:

```
Host yandex_bastion
  HostName 51.250.74.84
  User s-matveeva
  IdentityFile ~/.ssh/yandex_cloud/yandex_cloud_key

Host someinternalhost
  Hostname 10.128.0.34
  User s-matveeva
  IdentityFile ~/.ssh/yandex_cloud/yandex_cloud_key
  ProxyJump yandex_bastion
```
