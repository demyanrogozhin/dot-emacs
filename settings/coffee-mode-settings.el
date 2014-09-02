(defun my-coffee-mode-hook ()

  (set (make-local-variable 'tab-width) 2)
  (set (make-local-variable 'coffee-tab-width) 2)
  (highlight-indentation-set-offset 2)
  (highlight-indentation-mode)
  (highlight-indentation-current-column-mode)
  (line-number-mode))

(add-hook 'coffee-mode-hook 'my-coffee-mode-hook)
