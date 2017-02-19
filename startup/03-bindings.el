(use-package modalka
  :ensure t
  :bind* ((("C-z") modalka-mode))
  :config (mapcar
	   (lambda (b) (modalka-define-kbd (car b) (cadr b)))
	   '(("z" "C-z")
	     ("я" "C-z")
	     ("h" "C-b")
	     ("k" "C-p")
	     ("j" "C-n")
	     ("l" "C-f"))))
