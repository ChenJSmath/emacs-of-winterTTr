;; -*- coding: utf-8 -*-
(wttr/plugin:prepend-to-load-path "csharp-mode")
(autoload 'csharp-mode "csharp-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))
