(add-hook 'php-mode-hook (lambda ()
  (message "Drupal mode activated.")
  (set 'tab-width 2)
  (set 'c-basic-offset 2)
  (set 'indent-tabs-mode nil)
  (c-set-offset 'case-label '+)
  (c-set-offset 'arglist-intro '+) ; for FAPI arrays and DBTNG
  (c-set-offset 'arglist-cont-nonempty 'c-lineup-math) ; for DBTNG fields and values
  (visual-line-mode)
  (imenu-add-menubar-index)
  (hideshowvis-enable)
  (modify-syntax-entry ?_ "w")
  (djcb-set-cursor-according-to-mode)
  (local-set-key (kbd "RET") 'newline-and-indent)))

(add-hook 'css-mode-hook (lambda ()
  (message "CSS Mode Activated")
  (set 'tab-width 2)
  (setq css-indent-offset 2)
  (set 'c-basic-offset 2)
  (visual-line-mode)
  (modify-syntax-entry ?_ "w")
  (djcb-set-cursor-according-to-mode)
  (local-set-key (kbd "RET") 'newline-and-indent)))


(add-hook 'emacs-lisp-mode-hook (lambda ()
  (message "LISP Mode Activated")
  (djcb-set-cursor-according-to-mode)
  (visual-line-mode)))

(add-hook 'org-mode-hook (lambda ()
  (message "ORG Mode Activated")
  (djcb-set-cursor-according-to-mode)
  (visual-line-mode)
  (show-all)))

(add-hook 'js2-mode-hook (lambda ()
  (message "JS Mode Activated")
  (setq js2-auto-indent-p t)
  (setq js2-mirror-mode t)
  (setq js2-basic-offset 2)
  (setq tab-width 2)
  (visual-line-mode)
  (modify-syntax-entry ?_ "w")
  (djcb-set-cursor-according-to-mode)
  (local-set-key (kbd "RET") 'newline-and-indent)))


