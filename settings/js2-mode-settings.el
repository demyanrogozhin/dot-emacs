(custom-set-variables
 '(js-indent-level 2)
 '(js2-allow-keywords-as-property-names nil)
 '(js2-auto-indent-p nil)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil)
 '(js2-cleanup-whitespace t)
 '(js2-enter-indents-newline nil)
 '(js2-indent-on-enter-key t)
 '(js2-strict-missing-semi-warning nil)
 '(js2-show-parse-errors nil)
 '(js2-strict-missing-semi-warning nil)
 '(js2-strict-trailing-comma-warning t))

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
  :ensure flycheck
  :pin marmalade)
