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

(provide 'init-elpa)