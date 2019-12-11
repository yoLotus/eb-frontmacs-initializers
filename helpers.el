;;; helpers.el -- personal elisp functions

;;; Commentary:
;; nil now

;;; Code:

(defun copy-buffer-name-with-line-number ()
  "Custom helper.
Insert in kill ring the file name of the buffer name with the
current line number."
  (interactive)
  (kill-new
   (concat
    (buffer-file-name)
    (concat ":" (number-to-string (line-number-at-pos))))))

(provide 'helpers)
;;; helpers.el ends here
