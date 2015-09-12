;; -*- coding: utf-8 -*-
(wttr/plugin:prepend-to-load-path "exec-path-from-shell")
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
