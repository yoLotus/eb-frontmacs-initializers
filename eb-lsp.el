;;; eb-lsp.el -- personal customizations for ruby mode

;;; Commentary:
;; nil for now

;;; Code:

(use-package lsp-mode
  :hook (ruby-mode . lsp)
  :commands lsp)
;;; eb-lsp.el ends here
