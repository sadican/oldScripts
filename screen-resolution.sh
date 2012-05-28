#!/bin/sh
# Date: 28.05.2012
# Author: sadican
# Content: Xubuntu 12.04 screen resolution generation script for ASUS N61Jv

# ekran çözünürlüğü hakkında bilgi almak için
# cvt en boy yazarak gerekli bilgileri al
echo "getting resolution information…"
cvt 1366 768
# yeni ekran çözünürlük modu oluşturmak için
# yukarıdaki komut sonucunda dönen yazıdan
# Modeline kısmından sonraki kısmı kopyala
# xrandr --newmode yazıp konsola kopyaladığın
# kısmı yapıştır
echo "creating new mode…"
xrandr --newmode "1366x768" 85.25 1366 1440 1576 1784 768 771 781 798 -hsync +vsync
# yeni ekran çözünürlük modunu sisteme eklemek için
# xrandr –addmode yazıp monitör ismini ekrana yaz
# ben laptopda çalıştığım için LVDS1 yazdım
# monitör adından sonra Modeline kısmından sonra
# yazan tırnak içindeki mod adını kopyala
# monitör adından sonra boşluk bırakarak yapıştır
echo "adding it to the system…"
xrandr --addmode LVDS1 "1366x768"
# yeni oluşturduğun ekran çözünürlüğüne geçmek için
# xrandr –output LVDS1 –mode yazıp mod adını da
# ekleyerek ekranı dinamik olarak tekrar ayarla
echo "switching to new mode…"
xrandr --output LVDS1 --mode "1366x768"
echo "WELL DONE!"
notify-send -t 1000 "Resolution mode was changed!"
