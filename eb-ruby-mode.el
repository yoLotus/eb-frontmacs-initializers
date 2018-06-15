;;; eb-ruby-mode.el -- personal customizations for ruby mode

;;; Commentary:
;; nil for now

;;; Code:

(require 'ruby-mode)
(setq require-final-newline t)
(setq ruby-insert-encoding-magic-comment nil)

;; enable ruby-tools-mode for haml file
(add-hook 'haml-mode-hook 'ruby-tools-mode)

(provide 'eb-ruby-mode)
;;; eb-ruby-mode.el ends here
