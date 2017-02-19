;; VCS
(use-package magit
  :ensure t)

;; Editing
(use-package editorconfig
  :ensure t
  :config
  (custom-set-variables
   '(edconf-exec-path
     (expand-file-name
      (elhome-path-join elhome-directory "node_modules/.bin/editorconfig")))))

;; Terminal-emulator title
(use-package xterm-frobs :disabled t :ensure t)
(use-package xterm-title :disabled t
  :ensure t
  :config (setq frame-title-format '("%b" " - " invocation-name))
  :init
  (add-hook
   'tty-setup-hook
   (lambda nil (xterm-title-mode 1))))

;; Highlight line
(use-package beacon :ensure t :config (beacon-mode 1))
(use-package highlight-current-line :ensure t
  :config
  (custom-set-variables
   '(highlight-current-line-globally t)))

;; Load desktop
(desktop-save-mode 1)

;; Autosave
(savehist-mode)
(setq create-lockfiles nil)
(defconst auto-save-root
   (elhome-path-join elhome-directory "auto-save"))
(defconst auto-save-files-template
   (elhome-path-join auto-save-root "files" "\\2"))
(setq backup-directory-alist
      `((".*" . ,(elhome-path-join auto-save-root "backup"))))
(setq auto-save-list-file-prefix
      (elhome-path-join auto-save-root "list-"))
(setq auto-save-file-name-transforms
      `(("\\`/[^/]*:\\([^/]*/\\)*\\([^/]*\\)\\'" ,auto-save-files-template t)
	(".*" ,auto-save-files-template t)))

;; Misc
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default truncate-lines t)
(subword-mode)
(setq sentence-end-double-space nil)
(put 'narrow-to-region 'disabled nil)
(when (fboundp 'winner-mode)
  (winner-mode 1))
