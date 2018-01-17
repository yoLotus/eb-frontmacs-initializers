;;; eb-js-mode.el -- personal customizations for js mode

;;; Commentary:
;; nil for now

;;; Code:

;; remove semi-column js2 warning
(require 'js2-mode)
(setq js2-strict-missing-semi-warning nil)

(provide 'eb-js-mode)
;;; eb-js-mode.el ends here
