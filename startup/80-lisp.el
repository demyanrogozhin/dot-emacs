(dolist (x '(scheme emacs-lisp lisp))
  (add-hook (intern (concat (symbol-name x) "-mode-hook")) 'hl-line-mode)
  (add-hook (intern (concat (symbol-name x) "-mode-hook")) 'hs-minor-mode)
  (add-hook (intern (concat (symbol-name x) "-mode-hook")) 'highlight-parentheses-mode)
  (add-hook (intern (concat (symbol-name x) "-mode-hook")) 'highlight-symbol-mode)
;;(add-hook (intern (concat (symbol-name x) "-mode-hook")) 'enable-paredit-mode)
  (add-hook (intern (concat (symbol-name x) "-mode-hook")) 'rainbow-delimiters-mode))
