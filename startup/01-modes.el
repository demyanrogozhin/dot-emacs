(use-package
  flycheck :ensure t)

(use-package
 js2-mode
 :ensure t
 :mode "\\.js\\'"
 :interpreter "node"
 :config
  (defun js-dev-hook ()
    (flycheck-mode)
    (setq flycheck-javascript-standard-executable
	  (elhome-path-join elhome-directory "node_modules/.bin/standard"))
    (setq flycheck-javascript-eslint-executable
	  (elhome-path-join elhome-directory "node_modules/.bin/eslint"))
    (flycheck-select-checker 'javascript-eslint))
  (add-hook 'js2-mode-hook 'js-dev-hook))

(use-package
  scss-mode
  :ensure t
  :mode "\\.scss\\'")

;; Org
(use-package org :pin org :ensure t)
(use-package org-plus-contrib :pin org :ensure t)

;; nix
(use-package nix-mode :ensure t)

;; Shen

(use-package shen-elisp :ensure t)

(use-package shen-mode :ensure t)
