



;;自动加载外部修改
(global-auto-revert-mode t)

;;显示全局行号 show linum-mode
(global-linum-mode t)

;;************alias 缩写***********************
;;(abbrev-mode t)
;;(define-abbrev-table 'global-abbrev-table '(
					    
;;					    ))

;;************alias 缩写***********************

;;关闭备份文件 自动保存
(setq make-backup-files nil)
(setq auto-save-default nil)

;;开启最近打开的文件
(recentf-mode t)
(setq recentf-max-menu-items 25)

;;开启括号高亮
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;删除选中部分
(delete-selection-mode t)

;;整个文件缩进调整
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))

;;Hippie补全
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))

;;删除和复制的时候总是同意递归
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;;****************
(put 'dired-find-alternate-file 'disabled nil)
;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
;;****************

;;C-x, C-j能直接进入当前文件所在路径
(require 'dired-x)
;;使当一个窗口（frame）中存在两个分屏 （window）时，将另一个分屏自动设置成拷贝地址的目标。q
(setq dired-dwin-target 1)

;;专门给编程mode开启语法检查
(add-hook 'prog-mode-hook 'flycheck-mode)

;;

(provide 'init-better-defaults)
