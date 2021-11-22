;;添加源 Add Packages
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                             ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			     ("marmalade" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")
			     ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
			     )))
;; cl - Common Lisp Extension
(require 'cl)

(defvar my/packages '(
		      exec-path-from-shell
		      ;;theme
		      ;;dream-theme
		      dracula-theme




		      ;;alert
		      ;;ruby-hash-syntax




		      ;;translate
		      go-translate



		      ;;Ruby
		      ruby-electric
		      seeing-is-believing
		      chruby
		      inf-ruby
		      ruby-test-mode

		      
    company
    ;; --- Better Editor ---
    hungry-delete
    ;;swiper
    ;;counsel
    ;;smartparens
    ;; --- Major Mode ---
    ;;js2-mode
    ;; --- Minor Mode ---
    ;;nodejs-repl
    swiper
    counsel
    smartparens
    
    smart-compile
    popwin
    flycheck
    ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
    (loop for pkg in my/packages
    when (not (package-installed-p pkg)) do (return nil)
    finally (return t)))

(unless (my/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))



(global-hungry-delete-mode)


(smartparens-global-mode t)

(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


;;光标自动跳转到新窗口
(popwin-mode t)


(require 'smart-compile)


(provide 'init-packages)
