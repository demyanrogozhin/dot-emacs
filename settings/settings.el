(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(Info-additional-directory-list (quote ("~/doc/info")))
 '(bbdb-always-add-addresses (quote bbdb-ignore-some-messages-hook))
 '(bbdb-auto-notes-ignore (quote (("From" . "noreply") ("From" . "no-reply"))))
 '(bbdb-auto-notes-ignore-all (quote (("From" . "portal-noreply") ("From" . "facebook"))))
 '(bbdb-file "~/Mail/bbdb")
 '(bbdb-ignore-some-messages-alist (quote (("From" . "no-reply") ("From" . "portal-noreply") ("From" . "noreply") ("From" . "no_reply") ("ebay" . "") ("To" . "debian") ("To" . "enlightenment") ("Cc" . "list") ("Xref" . "gmane"))))
 '(bbdb-new-nets-always-primary (quote never))
 '(bbdb-north-american-phone-numbers-p nil)
 '(bbdb-notice-hook (quote (bbdb-auto-notes-hook)))
 '(bbdb-use-pop-up nil)
 '(bbdb/gnus-summary-mark-known-posters t)
 '(bbdb/mail-auto-create-p (quote bbdb-ignore-some-messages-hook))
 '(bbdb/news-auto-create-p nil)
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 2)
 '(company-tooltip-minimum 3)
 '(el-get-github-default-url-type (quote https))
 '(el-get-recipe-path (quote ("~/.emacs.d/el-get/el-get/recipes" "~/.emacs.d/el-get/el-get/recipes/emacswiki/" "~/.emacs.d/site-lisp/recipes/")))
 '(highlight-symbol-idle-delay 0.5)
 '(hl-sexp-background-color "#ffffff")
 '(hl-sexp-face (quote highlight))
 '(indent-tabs-mode nil)
 '(indicate-buffer-boundaries (quote left))
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((vertical-scroll-bars) (tool-bar-lines . 0) (menu-bar-lines . 0) (left-fringe . 3) (right-fringe . 4))))
 '(initsplit-pretty-print nil)
 '(js2-auto-indent-p t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-enter-indents-newline t)
 '(js2-indent-on-enter-key t)
 '(make-backup-files nil)
 '(mmm-submode-decoration-level 0)
 '(safe-local-variable-values (quote ((js-run . "swank-handler-tests.js") (lexical-binding . t) (js-run . "lisp-tests.js") (eval whitespace-mode) (eval set-face-attribute (quote whitespace-line) nil :background "red1" :foreground "yellow" :weight (quote bold)) (eval set-face-attribute (quote whitespace-tab) nil :background "red1" :foreground "yellow" :weight (quote bold)) (eval require (quote whitespace)) (eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook" (add-hook (quote write-contents-functions) (lambda nil (delete-trailing-whitespace (point-min) (point-max)) nil)) (require (quote whitespace)) "Sometimes the mode needs to be toggled off and on." (whitespace-mode 0) (whitespace-mode 1)) (whitespace-line-column . 80) (whitespace-style face trailing lines-tail) (require-final-newline . t) (eval add-hook (quote write-file-hooks) (quote time-stamp)))))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(vc-handled-backends nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(popup-face ((t (:stipple nil :background "lightgray" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight light :height 1.0 :width normal))))
 '(popup-menu-selection-face ((t (:background "steelblue" :foreground "white" :weight bold))))
 '(rainbow-delimiters-depth-1-face ((((background dark)) (:weight bold :height 1.25)))))
