;;; custom-global-bindings.el --- custom global bindings

;;; Commentary:
;; nil now

;; be sure that custom packages are installed
(require 'custom-packages (expand-file-name "initializers/custom-packages.el" user-emacs-directory))

;; other window but in back reverse cycle
(global-set-key (kbd "C-c o") '(lambda () (interactive) (other-window -1)))

;; some files in this directory need each other
(add-to-list 'load-path (expand-file-name "initializers" "~/.emacs.d"))

;;; code:
;; dired
(require 'dired)
(global-set-key (kbd "C-x C-j") #'dired-jump)

;; iedit
(require 'iedit)
(global-set-key (kbd "C-c i") #'iedit-mode)

;; comment-dwim-2
(require 'comment-dwim-2)
(global-set-key (kbd "M-;") #'comment-dwim-2)

;; personal helpers (define in helpers.el)
(require 'helpers)

;; general
;; kill this buffer without prompting
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-c b f") 'copy-buffer-name-with-line-number)


(provide 'custom-global-bindings)
;;; custom-global-bindings.el ends here
