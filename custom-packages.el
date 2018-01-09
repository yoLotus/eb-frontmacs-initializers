;;; custom-packages.el -- install extra packages

;;; Commentary:
;; nil now

;;; Code:

(require 'package)
(package-initialize)

(defvar eb-packages
  '(
    exec-path-from-shell		; ensure GUI emacs uses my env var
    comment-dwim-2			; comment line or end of line
    dockerfile-mode			; mode to edit Dockerfile
    org-bullets				; prettiers headers for org mode
    ruby-tools				; helpers for ruby
    json-mode				; yes handle json is prety convenient
    markdown-mode			; write markdown
    iedit				; edit multiple region in one time
    restclient                          ; REST client
    haml-mode                           ; haml mode for rails views
    powerline                           ; fancy buffer info theme
    go-mode                             ; golang mode
    all-the-icons                       ; fancy icons to shiny emacs
    graphql-mode                        ; mode for graphql DSL
    prettier-js                         ; prettier js files
    ) "Extra package to Frontmacs to install.")

;; check if packages are installed and install them if not
(dolist (package eb-packages)
  (progn
    (if (not (package-installed-p package))
	(package-install package))))

;;; custom-packages.el ends here
