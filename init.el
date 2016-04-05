(require 'cl)
(setq debug-on-error t)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)

(setq package-enable-at-startup nil)
(package-initialize)
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

;; use-package.el is no longer needed at runtime.
;; This means you should put the following at the top of your Emacs,
;; to further reduce load time

(eval-when-compile
  (require 'use-package))

;; Load modular home configuration
(use-package
 elhome
 :ensure t
 :init (defconst elhome-directory "~/.emacs.d/")
 :config (elhome-init))
