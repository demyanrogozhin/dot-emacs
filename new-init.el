(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives 
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(setq package-enable-at-startup nil)

;;(setq package-load-list '(( skewer-mode t )))
;;(setq package-load-list '(all)) ;;default
(setq 
 my-package-alist
 '( melpa
    skewer-mode
    js2-mode
    ergoemacs-mode))

(package-initialize)

(dolist (elt my-package-alist)
  (unless (package-installed-p elt)
    (package-install elt)))
