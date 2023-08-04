
;; close tool bar
(tool-bar-mode -1)
;; close scroll bar
(scroll-bar-mode -1)

;; close startup tutorial page
(setq inhibit-startup-screen t)

;; set default direcotry to the home directory
(setq default-directory "~/")

;; ask whether they really want to quit to prevent accidental closures
(setq confirm-kill-emacs #'yes-or-no-p)

(global-linum-mode 1)

(set-face-attribute 'default nil :font "Hack Nerd Font Mono")

(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
;;(package-initialize) ;; You might already have this line

(setq package-check-signature nil); 国内设置

(require 'package)

;; initialize package manager
(unless (bound-and-true-p package-initialized)
  (package-initialize))

;; refesh contents
(unless package-archive-contents
  (package-refresh-contents))

;; install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(setq use-package-always-ensure t)
(setq use-package-always-defer t)
(setq use-package-always-demand nil)
(setq use-package-expand-minimally t)
(setq use-pacage-verbose t)

(require 'use-package)
(use-package restart-emacs)

(use-package gruvbox-theme
  :init (load-theme 'gruvbox-dark-soft t))

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
	sml/theme 'respectful)
  (sml/setup))
