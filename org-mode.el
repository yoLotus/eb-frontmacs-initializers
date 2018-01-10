;;; org-mode.el -- extra setup for org mode

;;; Commentary:
;; nil now

;;; Code:

(require 'org)

;; hide emphasis markers
(setq org-hide-emphasis-markers t)

;; dash are replaced by prettier bullet
(font-lock-add-keywords 'org-mode
                        '(("^ +\\([-*]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

;; bullets as headers
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;;; org-mode.el ends here
