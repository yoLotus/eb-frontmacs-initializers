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

;;; rjsx-mode

(require 'rjsx-mode)

(defun rjsx-region-wrap (node)
  "Wrap an region with NODE tag."
  (interactive "sTag wrapper: ")
  (if (region-active-p)
      (save-mark-and-excursion
       (progn
         (if (< (mark) (point)) (exchange-point-and-mark))
         (insert (concat "<" node ">"))
         (exchange-point-and-mark)
         (insert (concat "</" node ">"))))
    (message "no active region")))

(define-key rjsx-mode-map (kbd "C-c C-w") 'rjsx-region-wrap)

;; coffee mode
(custom-set-variables '(coffee-tab-width 2))

(add-hook 'coffee-mode-hook
          (lambda ()
            (set-fill-column 120)))

(provide 'eb-js-mode)
;;; eb-js-mode.el ends here
