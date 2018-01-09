;;; custom-local-bindings.el --- custom local bindings

;;; Commentary:
;; nil now

;;; code:

;; magit
(require 'magit)

;; add new key in log mode
;;; make easy to checkout the commit the mark is on
(define-key magit-log-mode-map (kbd "C-c SPC") #'magit-checkout)

(provide 'custom-local-bindings)
;;; custom-local-bindings.el ends here
