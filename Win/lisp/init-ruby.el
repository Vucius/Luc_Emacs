;;rcodetools
(setq rcodetools-file (expand-file-name "x:/Ruby/Ruby26-x64/lib/ruby/gems/2.6.0/gems/rcodetools-0.8.5.0/rcodetools.el" user-emacs-directory))
(load-file rcodetools-file)
(with-eval-after-load 'ruby-mode
  (define-key ruby-mode-map (kbd "C-c C-d") 'xmp)
  (define-key ruby-mode-map (kbd "C-c c") 'smart-compile)
  (define-key ruby-mode-map (kbd "C-c C-c") (kbd "C-c c C-m"))
  )

(add-to-list 'auto-mode-alist
             '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))
;;what_methods



(provide 'init-ruby)
;;;init-ruby.el
