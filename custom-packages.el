;;; custom-packages.el -- install extra packages

;;; Commentary:
;; nil now

;;; Code:

(require 'package)
(package-initialize)

(defvar eb-packages
  '(
    exec-path-from-shell        		; ensure GUI emacs uses my env var
    comment-dwim-2			            ; comment line or end of line
    dockerfile-mode			            ; mode to edit Dockerfile
    org-bullets				            ; prettiers headers for org mode
    ruby-tools				            ; helpers for ruby
    robe                                ; ruby files navigator
    json-mode				            ; yes handle json is prety convenient
    markdown-mode			            ; write markdown
    iedit				                ; edit multiple region in one time
    restclient                          ; REST client
    haml-mode                           ; haml mode for rails views
    powerline                           ; fancy buffer info theme
    go-mode                             ; golang mode
    all-the-icons                       ; fancy icons to shiny emacs
    ; graphql-mode                        ; mode for graphql DSL
    prettier-js                         ; prettier js files
    treemacs                            ; files browses for Emacs
    treemacs-projectile                 ; projectile integration form treemacs package
    nyan-mode                           ; show point position in buffer with nyancat
    projectile-rails                    ; projectile support for rails project
    rvm                                 ; rvm integration in Emacs
    yasnippet-snippets                  ; useful snippets for yas
    string-inflection                   ; easily case switcher
    lsp-ui                              ; lsp ui for Emacs (should auto install lsp-mode)
    yafolding                           ; folding code block based on indentation
    ) "Extra package to Frontmacs to install.")

;; check if packages are installed and install them if not
(dolist (package eb-packages)
  (progn
    (if (not (package-installed-p package))
	    (package-install package))))

(provide 'custom-packages)

;;; custom-packages.el ends here
