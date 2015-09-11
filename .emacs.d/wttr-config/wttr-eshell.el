;; -*- coding: utf-8 -*-
(require 'wttr-utils)

(with-eval-after-load "em-hist"
  (if (boundp 'eshell-save-history-on-exit)
      (setq eshell-save-history-on-exit t))
  (if (boundp 'eshell-ask-to-save-history)
      (setq eshell-ask-to-save-history 'always)))


(defun wttr/eshell:git-branch-string (path)
  "Returns current git branch as a string, or the empty string if
PATH is not in a git repo (or the git command is not found)."
  (interactive)
  (when (and (eshell-search-path "git")
             (locate-dominating-file (expand-file-name path) ".git"))
    (let ((git-output (shell-command-to-string (concat "git branch | grep '\\*' | sed -e 's/^\\* //'"))))
      (if (> (length git-output) 0) (substring git-output 0 -1) ""))))


;(abbreviate-file-name)
;
;
(setq eshell-prompt-function
      (lambda ()
        (concat
         (abbreviate-file-name (eshell/pwd))
         (let ((branch (wttr/eshell:git-branch-string (eshell/pwd))))
           (if branch (concat " [" branch "]") ""))
         " $ ")))

(setq eshell-prompt-regexp "^[^#$\n]* [#$] ")

(provide 'wttr-eshell)
