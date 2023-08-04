;; 将当前用户的Emacs配置目录下的 "lisp" 子目录添加到 'load-path' 中，
;; 这样Emacs将在该目录下查找并加载额外的Emacs Lisp文件
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "lisp")))

;; 设置 'custom-file' 变量，用于保存由Emacs自动生成的自定义配置
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-startup)	;; 加载 'init-startup' 模块，它包含了一些初始化设置和启动配置的代码
(require 'init-elpa)	;; 加载 'init-elpa' 模块，它包含了与包管理相关的配置，用于安装和管理第三方包
(require 'init-ui)		;; 加载 'init-ui' 模块，它包含了用户界面的相关配置，如主题、字体等

;; 加载 'test' 模块，该模块提供了名为 'hello-world' 的函数，用于在Emacs中输出 "Hello, world!"
(require 'test)

;; 使用 'use-package' 来加载 'restart-emacs' 包，
;; 该包提供了一个命令用于在不退出Emacs的情况下重启Emacs
(use-package restart-emacs)

;; 如果 'custom-file' 不存在，就创建一个空的文件，以避免加载空文件时产生错误
;; 加载 'custom-file' 文件，该文件通常用于保存由Emacs自动生成的自定义配置
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load-file custom-file)
