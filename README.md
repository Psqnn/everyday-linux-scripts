Everyday Linux Scripts

**Простые скрипты для ежедневной жизни в Linux (EndeavourOS/Arch). Бэкап, мониторинг, VPN — всё в 1 команду!**  
*Иркутск/Bайкал edition. Для новичков и pros.*


## ✨ Скрипты 
| Скрипт | Что делает | 
|--------|------------
| backup-daily.sh | Бэкап ~/ с датой 
| sys-monitor.sh | CPU/RAM/диск info  
| cleanup-cache.sh | Чистка temp/cache  
| vpn-toggle.sh | VPN on/off 
| update-arch.sh | pacman/yay update 
| todo.sh | TODO список 

## Установка
```bash
git clone https://github.com/Psqnn/everyday-linux-scripts.git
cd everyday-linux-scripts
chmod +x *.sh
./backup-daily.sh  # Тест!
