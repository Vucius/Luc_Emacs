;;关闭工具栏 turn off tool bar
(tool-bar-mode -1)
;;关闭滑动条 turn off scroll bar
(scroll-bar-mode -1)

;;关闭启动画面和scratch buffer里面的内容
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)


;;更改光标
(setq-default cursor-type 'bar)

;;全屏Emacs
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;高亮当前行
(global-hl-line-mode t)

;;********************Xcode
;;(add-to-list 'load-path (expand-file-name "lisp/xcode-theme" user-emacs-directory))
;;(require 'xcode-dark-theme)
;;(load-theme 'xcode-dark t)
(load-theme 'dracula t)

(provide 'init-ui)
