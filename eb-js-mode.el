;;; eb-js-mode.el -- personal customizations for js mode

;;; Commentary:
;; nil for now

;;; Code:

(require 'js2-mode)

;; remove semi-column js2 warning
(setq js2-strict-missing-semi-warning nil)

;; indent case statement in switch block
(setq js-switch-indent-offset 2)

;; prettier
(setq-default prettier-js-args '("--no-semi" "--single-quote"))
;;; enable it on all jsx? files
(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)

(provide 'eb-js-mode)
;;; eb-js-mode.el ends here
