;;; init-dired.el --- Dired customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


;;删除时总是删除所有，复制时总是复制所有
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)


(put 'dired-find-alternate-file 'disabled nil)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
;;C-x, C-j能直接进入当前文件所在路径
(require 'dired-x)
;;使当一个窗口（frame）中存在两个分屏 （window）时，将另一个分屏自动设置成拷贝地址的目标。q
(setq dired-dwin-target 1)
(provide 'init-dired)
;;; init-dired.el ends here
