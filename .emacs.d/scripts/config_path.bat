@echo off
REG ADD "HKLM\SOFTWARE\WOW6432Node\GNU\Emacs" /t REG_SZ /v HOME /d "E:\Tools\Emacs"
