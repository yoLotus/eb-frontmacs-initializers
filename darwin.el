;;; darwin.el
;;; handle MAX OS X keyboard to move the meta key to left cmd

(if (eq system-type 'darwin)
    (progn
      (setq mac-command-modifier 'meta)
      (setq mac-right-option-modifier 'none)
      (global-set-key (kbd "M-n") '(lambda () (interactive) (insert "~")))))

;; darwin.el ends here
