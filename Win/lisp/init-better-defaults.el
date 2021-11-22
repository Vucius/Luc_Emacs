
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



;;专门给编程mode开启语法检查
(add-hook 'prog-mode-hook 'flycheck-mode)

;;

(provide 'init-better-defaults)
