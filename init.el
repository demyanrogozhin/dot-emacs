;;(toggle-debug-on-error)
(setq windows-p (numberp (string-match "mingw" (emacs-version))))
(defun log-edit-mode () nil)

;; Add mermelade
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; ElHome
(defconst elhome-directory "~/.emacs.d/")
(if windows-p
    (progn 
      (set-face-font 'default  "Liberation Mono")
      ;; SHELL
      (setq explicit-shell-file-name
            "C:/Program Files/Git/bin/sh.exe")
      (setq shell-file-name explicit-shell-file-name)
      (add-to-list 'exec-path "C:/Program Files/Git/bin")
      (setq explicit-sh.exe-args '("--login" "-i"))
      (setenv "SHELL" shell-file-name)
      (add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)

      (custom-set-variables
       '(el-get-github-default-url-type 'https))
      (setq my-mach-packages '())
      (setq el-get-dir (concat (file-name-as-directory elhome-directory) "el-get/")))
  (progn
    (setq my-mach-packages '(magit vkill))
    (defconst elhome-directory "~/.emacs.d")))

(add-to-list 'load-path (concat (file-name-as-directory elhome-directory) "el-get/el-get"))
(setq el-get-git-install-url "git://github.com/dimitri/el-get.git")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-master-branch)
       (end-of-buffer)
       (eval-print-last-sexp)))))
(let ((emacswiki-recipes (concat el-get-dir "el-get/recipes/emacswiki")))
  (unless (file-exists-p emacswiki-recipes)
    (el-get-emacswiki-refresh emacswiki-recipes t)))

(push (concat elhome-directory "site-lisp/recipes/") el-get-recipe-path)

;; Local sources
(setq el-get-sources
      '((:name ps-ccrypt
               :type http
               :url "http://ccrypt.sourceforge.net/ps-ccrypt.el"
               :post-init (require 'ps-ccrypt)
               :features ps-ccrypt)
        (:name kill-ring-search
               :website "http://nschum.de/src/emacs/kill-ring-search/"
               :description "Search the kill ring incrementally and yank the result"
               :type elpa
               :url "kill-ring-search")
        (:name color-theme-less :type http :url "http://jblevins.org/git/misc.git/plain/color-theme-less.el"
               :depends color-theme
               :post-init (progn (require 'color-theme-less) (color-theme-less)))
        ))

(setq my-packages
      (append my-mach-packages
              '(initsplit
                elhome
                ergoemacs-keybindings
                ;; geiser
                ;; slime
                ;; speck csv-mode eval-sexp-fu 
                rainbow-delimiters
                paredit
                ;; paredit-extension parenthesis
                parenface
                ;; highlight
                highlight-parentheses
                highlight-indentation
                volatile-highlights
                ;; highlight-sexp
                highlight-symbol smex
                js2-mode
                js2-highlight-vars
                s
                dash
                multiple-cursors
                mark-multiple
                expand-region
                yasnippet
                js2-refactor
                js-comint
                color-theme
                rainbow-mode
                kill-ring-search
                smart-tab
                scss-mode
                jade-mode
                ;; auto-complete
                ;; ac-slime
                ;; ac-dabbrev
                )
              (mapcar 'el-get-source-name el-get-sources)))
(add-hook 'el-get-post-install-hooks 'el-get-init)
;; you should be connected to Net at this point
(el-get 'sync my-packages)

(require 'elhome)
(elhome-init)
