;;; eb-ruby-mode.el -- personal customizations for ruby mode

;;; Commentary:
;; nil for now

;;; Code:

(require 'ruby-mode)
(setq require-final-newline t)
(setq ruby-insert-encoding-magic-comment nil)

;; enable ruby-tools-mode for haml file
(add-hook 'haml-mode-hook 'ruby-tools-mode)
(add-hook 'web-mode-hook
          (lambda ()
            (if (string= web-mode-engine "erb")
                (ruby-tools-mode))))

;; enable projectile-rails capatibilities
(projectile-rails-global-mode)

;; set fill-column value
(add-hook 'ruby-mode-hook
          (lambda ()
            (progn
              (set-fill-column 120)
              (local-set-key (kbd "C-c C-u") 'string-inflection-ruby-style-cycle))))
;;
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

(provide 'eb-ruby-mode)
;;; eb-ruby-mode.el ends here
