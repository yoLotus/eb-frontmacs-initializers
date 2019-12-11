;;; helpers.el -- personal elisp functions

;;; Commentary:
;; nil now

;;; Code:

(defun copy-buffer-name-with-line-number ()
  "Custom helper.
Insert in kill ring the file name of the buffer name with the
current line number."
  (interactive)
  (let ((file-name (buffer-file-name))
        (line-number (number-to-string (line-number-at-pos))))
    (progn
      (kill-new
       (concat
        file-name
        (concat ":" line-number)))
      (message "%s:%s copied in the kill ring" file-name line-number))))

(provide 'helpers)
;;; helpers.el ends here
