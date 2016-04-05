(use-package
 js2-mode
 :ensure t
 :mode "\\.js\\'"
 :interpreter "node"
 :config
  (defun js-dev-hook ()
    (flycheck-mode)
    (flycheck-select-checker 'javascript-standard))
  (add-hook 'js2-mode-hook 'js-dev-hook))

(use-package
  scss-mode
  :ensure t
  :mode "\\.scss\\'")

(use-package
  ps-ccrypt
  :ensure t)
