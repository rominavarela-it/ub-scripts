# Add a new desktop entry (application)

## .exe (ex. eclipse)

 > sudo nano /usr/share/applications/eclipse.desktop

[Desktop Entry]
Encoding=UTF-8
Name=Eclipse Java
Comment=Eclipse EE development for Java
Exec= /home/romina/.programs/eclipse/eclipse
Icon=/home/romina/.programs/eclipse/icon.xpm
Categories=Application
Type=Application
Terminal=0

## .jar (ex. mindsurf)

 > sudo nano /usr/share/applications/mindsurf.desktop

[Desktop Entry]
Encoding=UTF-8
Name=Mind Surf
Comment=Writters Community
Exec= /bin/sh '/home/romina/.programs/mindsurf/MindSurf'
Icon=/home/romina/.programs/mindsurf/icon.png
Categories=Application
Type=Application
Terminal=0
