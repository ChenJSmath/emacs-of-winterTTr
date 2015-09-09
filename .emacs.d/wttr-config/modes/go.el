;; -*- coding: utf-8 -*-

(when wttr/os:windowsp
  (wttr/prepend-to-exec-path "C:/go/bin"))
(wttr/plugin:prepend-to-load-path "go-mode.el")
(require 'go-mode-load)

