;;; helpers.el -- personal elisp functions

;;; Commentary:
;; nil now

;;; Code:

(defun copy-line ()
  "Copy line where point is."
  (save-excursion
    (let (_begin _end)
      (beginning-of-line)
      (setq _begin (point))
      (end-of-line)
      (setq _end (point))
      (kill-ring-save _begin _end)))
  )

(defun repeat-line ()
  "Copy current line and yank it the line under the point."
  (interactive)
  (let (
	(_col (current-column))
	)
    (copy-line)
    (end-of-line)
    (newline)
    (yank)
    (move-to-column _col))
  )

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
