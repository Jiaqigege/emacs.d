;; set default direcotry to the home directory



;;(global-linum-mode 1)

;; (set-face-attribute 'default nil :font "Hack Nerd Font Mono")


;; 使用特殊的办法关闭Automatic Scrolling
;; see:https://www.gnu.org/software/emacs/manual/html_node/emacs/Auto-Scrolling.html
;; If you set scroll-conservatively to a large number (larger than 100), automatic scrolling never centers point, no matter how far point moves.
(setq scroll-conservatively 100)


(setq default-directory "~/")						; 设置默认目录
(setq confirm-kill-emacs #'yes-or-no-p)				; 在关闭 Emacs 前询问是否确认关闭，防止误触
(electric-pair-mode t)								; 自动补全括号
(add-hook 'prog-mode-hook #'show-paren-mode)		; 编程模式下，光标在括号上时高亮另一个括号
(column-number-mode t)								; 在 Mode line 上显示列号
(global-auto-revert-mode t)							; 当另一程序修改了文件时，让 Emacs 及时刷新 Buffer
(delete-selection-mode t)							; 选中文本后输入文本会替换文本（更符合我们习惯了的其它编辑器的逻辑）
(setq inhibit-startup-message t)					; 关闭启动 Emacs 时的欢迎界面
(setq make-backup-files nil)						; 关闭文件自动备份
(add-hook 'prog-mode-hook #'hs-minor-mode)			; 编程模式下，可以折叠代码块
(global-display-line-numbers-mode 1)				; 在 Window 显示行号
(tool-bar-mode -1)									; （熟练后可选）关闭 Tool bar
(when (display-graphic-p) (toggle-scroll-bar -1))	; 图形界面时关闭滚动条


(provide 'init-startup)