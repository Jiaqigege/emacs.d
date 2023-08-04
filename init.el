(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(require 'init-startup)
(require 'init-elpa)
(require 'init-ui)

(use-package restart-emacs)

