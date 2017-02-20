;; Pre-setup for Linux
(setenv "PATH" (concat "/run/current-system/sw/bin:" (getenv "PATH")))
(push "/run/current-system/sw/bin" exec-path)
(push "~/.nix-profile/bin" exec-path))

(require 'cl)
(setq debug-on-error t)
(defconst home-directory "~/.emacs.d/")

(let ((private-code (concat (file-name-as-directory home-directory) "private")))
  (if (file-exists-p  (concat private-code ".el"))
      (load private-code)))

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://www.mirrorservice.org/sites/melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)

(setq package-enable-at-startup nil)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

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
 :init (defconst elhome-directory home-directory)
 :config (elhome-init))
