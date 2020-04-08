;;; custom-local-bindings.el --- custom local bindings

;;; Commentary:
;; nil now

;;; code:

;; magit
(require 'magit)

;; add new key in log mode
;;; make easy to checkout the commit the mark is on
(define-key magit-log-mode-map (kbd "C-c SPC") #'magit-checkout)

;; rails project
(require 'projectile-rails)

;; set the keymap prefix for rails project
(define-key projectile-rails-mode-map (kbd "C-c r") 'projectile-rails-command-map)

(provide 'custom-local-bindings)
;;; custom-local-bindings.el ends here
