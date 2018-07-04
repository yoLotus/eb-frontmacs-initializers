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

(provide 'misc)
;;; misc.el ends here
