;;; misc.el -- a lot (soon) af tiny things

;;; Commentary:
;; nil for now

;;; Code:

;; make the current frame maximized on start up
(toggle-frame-maximized)

;; user restclient-mode for file with `.erc` extension.
(add-to-list 'auto-mode-alist '("\\.erc$" . restclient-mode))

;; guru
(put 'narrow-to-region 'disabled nil)   ; enable narrowing by default

;; tab hell
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; funny nyan buffer position shower
(nyan-mode)

;; unexpected C-x C-c hits happen too often
(setq confirm-kill-emacs 'y-or-n-p)

;; multiple cursors
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)

;; projectile
(add-to-list 'projectile-globally-ignored-directories "vendor")

;; remove annoying alarm
(setq ring-bell-function 'ignore)

;; emojis
(add-hook 'after-init-hook 'global-emojify-mode)

(provide 'misc)
;;; misc.el ends here
