;;; custom-global-bindings.el --- custom global bindings

;;; Commentary:
;; nil now

;;; code:
;; dired
(require 'dired)
(global-set-key (kbd "C-x C-j") #'dired-jump)

;; iedit
(require 'iedit)
(global-set-key (kbd "C-c i") 'iedit-mode)

;; comment-dwim-2
(require 'comment-dwim-2)
(global-set-key (kbd "M-;") 'comment-dwim-2)

(provide 'custom-global-bindings)
;;; custom-global-bindings.el ends here
