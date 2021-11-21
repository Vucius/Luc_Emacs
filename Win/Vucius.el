;;(package-initialize)

(add-to-list 'load-path "~/.emacs.d/init el/")

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org)
(require 'init-keybindings)
(require 'init-ruby)
;;(require ')


(setq custom-file (expand-file-name "init el/custom.el" user-emacs-directory))

(load-file custom-file)
