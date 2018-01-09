;;; darwin.el -- make some actions on start up if OS X is detected

;;; Commentary:
;; nil now

;;; Code:

(if (eq system-type 'darwin)
    (progn
      ;; handle MAX OS X keyboard to move the meta key to left cmd
      (setq mac-command-modifier 'meta)
      (setq mac-right-option-modifier 'none)

      ;; I use an AZERTY keyboard (oups)
      (global-set-key (kbd "M-n") '(lambda () (interactive) (insert "~")))))

;;; darwin.el ends here
