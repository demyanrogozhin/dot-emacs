(use-package magit :ensure t)
(use-package editorconfig
  :ensure t
  :config
  (custom-set-variables
   '(edconf-exec-path
     (expand-file-name
      (elhome-path-join elhome-directory "node_modules/.bin/editorconfig")))))
(use-package ergoemacs-mode
  :ensure t
  :pin melpa)
