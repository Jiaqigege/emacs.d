(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-startup)
(require 'init-elpa)
(require 'init-ui)

(use-package restart-emacs)

(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load-file custom-file)

