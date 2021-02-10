
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

;; auto display line number
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; auto insert closing bracket
(electric-pair-mode 1)

;; turn on highlighting current line
(global-hl-line-mode 1)

;; turn on bracket match highlight
(show-paren-mode 1)

;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; show cursor position within line
(column-number-mode 1)

;; relpace yes no with y n
(defalias 'yes-or-no-p 'y-or-n-p)

;; auto load spacemacs-light theme
(load-theme 'spacemacs-light t)
