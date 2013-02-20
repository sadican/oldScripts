#!/bin/bash
#indirilen belgeleri klasöre çıkartma
tar xvjf Sublime*Text*2*.tar.bz2
#uygulama klasörünü opt dizinine taşıma
sudo mv Sublime*Text*2 /opt/
#komut satırından açabilmek için sembolik bağlantı oluşturma
sudo ln -s /opt/Sublime*Text*2/sublime_text /usr/bin/sublime
#uygulama için varsayılan açma dosyası oluşturma
#(launcher demek istiyorum ama İngilizce’ye çeviremedim)
#(Tırnak içindeki alanı keyfinize göre düzenleyebilirsiniz.)
echo “[Desktop Entry]
Name=Sublime Text 2
GenericName=Text Editor
Comment=Edit text/code files
Keywords=Plaintext;Write;
Exec=sublime
Terminal=false
Type=Application
StartupNotify=true
MimeType=text/plain;
Icon=accessories-text-editor
Categories=TextEditor;IDE;Development
Actions=Window;Document;
X-Ubuntu-Gettext-Domain=sublime” > sublime.desktop
#açma dosyasını olması gereken dizine taşıma
sudo mv sublime.desktop /usr/share/applications/
