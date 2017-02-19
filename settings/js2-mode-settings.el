
(setq
 js-minor-modes
 '((highlight-indentation)
   (rainbow-delimiters-mode)))

(use-package
  js2-refactor
  :ensure t
  :config (js2r-add-keybindings-with-prefix "C-e"))

(use-package
  flycheck-mode
  :ensure flycheck)
