;; 定义一个函数 `hello-world`，用于在Emacs中输出 "Hello, world!"
(defun hello-world ()
  (interactive)
  (message "Hello, world!"))

;; 提供 'test' 特性给其他Emacs Lisp代码使用
(provide 'test)