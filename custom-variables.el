;;; custom-variables.el -- custom variables

;;; Commentary:
;; nil for now

;;; Code:

;; grep
(setq grep-command "grep -nrIH --exclude-dir=\".git\" --exclude-dir=\"tmp\" --exclude-dir=\"log\" --exclude-dir=\"node_modules\" ")

;; js2
(setq js2-strict-missing-semi-warning nil)

(provide 'custom-variables)
;;; custom-variables.el ends here
