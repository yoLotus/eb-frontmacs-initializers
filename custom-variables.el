;;; custom-variables.el -- custom variables

;;; Commentary:
;; nil for now

;;; Code:

;; grep
(setq grep-command "grep -nrIH --exclude-dir=\".git\" --exclude-dir=\"tmp\" --exclude-dir=\"log\" --exclude-dir=\"node_modules\" ")

;; magit
(require 'magit)
; do not ask to save buffer before open magit buffers
(setq magit-save-repository-buffers 'dontask)

(provide 'custom-variables)
;;; custom-variables.el ends here
