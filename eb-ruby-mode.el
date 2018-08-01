;;; eb-ruby-mode.el -- personal customizations for ruby mode

;;; Commentary:
;; nil for now

;;; Code:

(require 'ruby-mode)
(setq require-final-newline t)
(setq ruby-insert-encoding-magic-comment nil)

;; enable ruby-tools-mode for haml file
(add-hook 'haml-mode-hook 'ruby-tools-mode)

;; enable projectile-rails capatibilities
(projectile-rails-global-mode)

;; set fill-column value
(add-hook 'ruby-mode-hook
          (lambda ()
            (set-fill-column 120)))

(provide 'eb-ruby-mode)
;;; eb-ruby-mode.el ends here
