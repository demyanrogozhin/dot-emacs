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
 '(bbdb-ignore-some-messages-alist
   (quote
    (("From" . "no-reply")
     ("From" . "portal-noreply")
     ("From" . "noreply")
     ("From" . "no_reply")
     ("ebay" . "")
     ("To" . "debian")
     ("To" . "enlightenment")
     ("Cc" . "list")
     ("Xref" . "gmane"))))
 '(bbdb-new-nets-always-primary (quote never))
 '(bbdb-north-american-phone-numbers-p nil)
 '(bbdb-notice-hook (quote (bbdb-auto-notes-hook)))
 '(bbdb-use-pop-up nil)
 '(bbdb/gnus-summary-mark-known-posters t)
 '(bbdb/mail-auto-create-p (quote bbdb-ignore-some-messages-hook))
 '(bbdb/news-auto-create-p nil)
 '(comint-mode-hook
   (quote
    (ergoemacs-comint-hook ansi-color-for-comint-mode-on)))
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 2)
 '(company-tooltip-minimum 3)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (system-type-windows-nt)))
 '(custom-safe-themes
   (quote
    ("c52e4cc847e73153c1c4fd2f6e528ff9f7b560e203b37d0b6c749161e36da843" "37ce6638dc23a612a861357862f676041ad7b6547ccafa0c6249c1190f127906" default)))
 '(ede-project-directories (quote ("/home/dmn/hanoi" "/home/dmn/tmp/ede")))
 '(el-get-github-default-url-type (quote https))
 '(el-get-recipe-path
   (quote
    ("~/.emacs.d/el-get/el-get/recipes" "~/.emacs.d/el-get/el-get/recipes/emacswiki/" "~/.emacs.d/site-lisp/recipes/")) t)
 '(grep-find-ignored-files
   (quote
    (".#*" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.dfsl" "*.pfsl" "*.d64fsl" "*.p64fsl" "*.lx64fsl" "*.lx32fsl" "*.dx64fsl" "*.dx32fsl" "*.fx64fsl" "*.fx32fsl" "*.sx64fsl" "*.sx32fsl" "*.wx64fsl" "*.wx32fsl" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo" "#*#")))
 '(highlight-indentation-offset 2)
 '(highlight-symbol-idle-delay 0.5)
 '(hl-paren-colors
   (quote
    ("DodgerBlue1" "RoyalBlue2" "RoyalBlue3" "RoyalBlue4")))
 '(hl-sexp-background-color "#ffffff")
 '(hl-sexp-face (quote highlight))
 '(indent-tabs-mode nil)
 '(indicate-buffer-boundaries (quote left))
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(initial-frame-alist
   (quote
    ((vertical-scroll-bars)
     (tool-bar-lines . 0)
     (menu-bar-lines . 0)
     (left-fringe . 3)
     (right-fringe . 4))))
 '(initsplit-pretty-print nil)
 '(js2-allow-keywords-as-property-names nil)
 '(js2-auto-indent-p t)
 '(js2-basic-offset 4)
 '(js2-bounce-indent-p t)
 '(js2-cleanup-whitespace t)
 '(js2-enter-indents-newline t)
 '(js2-indent-on-enter-key t)
 '(kill-read-only-ok t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(mmm-submode-decoration-level 0)
 '(pr-gs-command "gswin64.exe")
 '(safe-local-variable-values
   (quote
    ((eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
           (add-hook
            (quote write-contents-functions)
            (lambda nil
              (delete-trailing-whitespace)
              nil))
           (require
            (quote whitespace))
           "Sometimes the mode needs to be toggled off and on."
           (whitespace-mode 0)
           (whitespace-mode 1))
     (js-run . "swank-handler-tests.js")
     (lexical-binding . t)
     (js-run . "lisp-tests.js")
     (eval whitespace-mode)
     (eval set-face-attribute
           (quote whitespace-line)
           nil :background "red1" :foreground "yellow" :weight
           (quote bold))
     (eval set-face-attribute
           (quote whitespace-tab)
           nil :background "red1" :foreground "yellow" :weight
           (quote bold))
     (eval require
           (quote whitespace))
     (eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
           (add-hook
            (quote write-contents-functions)
            (lambda nil
              (delete-trailing-whitespace
               (point-min)
               (point-max))
              nil))
           (require
            (quote whitespace))
           "Sometimes the mode needs to be toggled off and on."
           (whitespace-mode 0)
           (whitespace-mode 1))
     (whitespace-line-column . 80)
     (whitespace-style face trailing lines-tail)
     (require-final-newline . t)
     (eval add-hook
           (quote write-file-hooks)
           (quote time-stamp)))))
 '(scroll-bar-mode nil)
 '(scss-compile-at-save nil)
 '(scss-sass-options (quote ("-t" "expanded")))
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(vc-handled-backends nil)
 '(wakatime-api-key "5b1db84d-a4c4-452f-8af4-1aae9ceafa92")
 '(x-select-enable-clipboard t)
 '(x-select-enable-primary nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "gray70" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal))))
 '(ediff-current-diff-B ((t (:foreground "brightgreen"))))
 '(ediff-current-diff-C ((t (:background "color-24"))))
 '(ediff-fine-diff-B ((t (:background "color-22"))))
 '(ediff-odd-diff-A ((t (:foreground "White"))))
 '(ediff-odd-diff-C ((t (:foreground "White"))))
 '(font-lock-comment-face ((t (:foreground "brightcyan" :weight bold))))
 '(header-line ((t (:inherit link :underline nil))))
 '(highlight-changes ((t (:background "gray5"))) t)
 '(highlight-changes-delete ((t nil)) t)
 '(highlight-indentation-current-column-face ((t (:inherit default :inverse-video t :height 0.2))))
 '(highlight-indentation-face ((t (:background "grey11" :height 0.2))))
 '(magit-header ((t (:inherit link :underline nil :weight bold))))
 '(magit-item-highlight ((t nil)))
 '(popup-face ((t (:stipple nil :background "lightgray" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight light :height 1.0 :width normal))))
 '(popup-menu-selection-face ((t (:background "steelblue" :foreground "white" :weight bold))))
 '(rainbow-delimiters-depth-1-face ((((background dark)) (:weight bold))))
 '(rainbow-delimiters-unmatched-face ((t (:inherit (error js2-warning-face) :foreground "#88090B"))))
 '(speedbar-tag-face ((t (:foreground "DarkSlateGray4"))))
 '(widget-field ((t (:inherit link :foreground "#999" :weight bold)))))
