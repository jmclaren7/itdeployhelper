@ECHO OFF
set image-root=H:\Windows 10 Images\21H1

del "%image-root%\Auto-saved*.xml"
del "%image-root%\NTLite.log"

robocopy "%~dp0\" "%image-root%\sources\$OEM$\$$\IT" /mir /njs /njh /xd .git

pause
