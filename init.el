
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

;; 
(add-hook 'prog-mode-hook #'show-paren-mode)

(column-number-mode t)


