;; -*- coding: utf-8 -*-

(wttr/plugin:prepend-to-load-path "expand-region.el")
(autoload 'er/expand-region "expand-region" "auto expand region" t)
(global-set-key (kbd "M-2") 'er/expand-region)
