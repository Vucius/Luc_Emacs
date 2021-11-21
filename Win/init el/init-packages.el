;;添加源 Add Packages
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))))
;; cl - Common Lisp Extension
(require 'cl)

(defvar my/packages '(
    ;; --- Auto-completion ---
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
    ;;exec-path-from-shell
    ;; --- Themes ---
    ;;kaolin-themes
    atom-one-dark-theme
    swiper
    counsel
    smartparens
    exec-path-from-shell
    smart-compile
    popwin
    flycheck
    ;;Ruby
    inf-ruby
    ;; solarized-theme
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

;;let emacs could find the execuable
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(getenv "SHELL")
"x:/Program Files/Emacs/x86_64/libexec/emacs/27.2/x86_64-w64-mingw32/cmdproxy.exe"


(global-hungry-delete-mode)


(smartparens-global-mode t)

(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;;开启补全功能
(global-company-mode t)

;;加载主题
(load-theme 'atom-one-dark t)

;;光标自动跳转到新窗口
(popwin-mode t)


(require 'smart-compile)


(provide 'init-packages)
