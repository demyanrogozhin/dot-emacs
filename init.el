;;(toggle-debug-on-error)
(setq windows-p (string-match "mingw" (emacs-version)))
;; ElHome
(if windows-p
    (defconst elhome-directory "h:/emacs/")
    (defconst elhome-directory "~/.emacs.d"))
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

(push (concat el-get-dir "site-lisp/recipes/") el-get-recipe-path)

;; Local sources
(setq el-get-sources
      '((:name initsplit
         :description "Code to split customizations into different files"
         :type git
         :url "git://github.com/dabrahams/initsplit.git"
         :features initsplit)
	(:name bbdb
         :type git
         :url "git://git.savannah.nongnu.org/bbdb.git"
         :branch "v2.x"
         :load-path ("./lisp")
         ;; if using vm, add `--with-vm-dir=DIR' after ./configure
         :build `("autoconf" "rm -f lisp/bbdb-autoloads.el"
                  ,(concat "./configure --with-emacs=" el-get-emacs) "make autoloads bbdb"))
        (:name apel
         :type git
         :url "git://github.com/wanderlust/apel.git"
         :build
         (mapcar
          (lambda (target)
            (list el-get-emacs
                  (split-string "-batch -q -no-site-file -l APEL-MK -f")
                  target
                  "prefix" "site-lisp" "site-lisp"))
          '("compile-apel" "install-apel"))
         :load-path ("site-lisp/apel" "site-lisp/emu"))
        (:name flim
         :depends apel
         :type git
         :url "git://github.com/wanderlust/flim.git"
         :build
         (append
          (mapcar
           (lambda (target)
             (list el-get-emacs
                   (mapcar (lambda (pkg)
                             (mapcar (lambda (d) `("-L" ,d)) (el-get-load-path pkg)))
                           '("apel"))
                   (split-string "-batch -q -no-site-file -l FLIM-MK -f")
                   target
                   "prefix" "site-lisp" "site-lisp"))
           '("compile-flim" "install-flim")))
         :load-path ("site-lisp/flim"))
        (:name semi
         :depends (apel flim)
         :type git
         :url "git://github.com/wanderlust/semi.git"
         :build
         (append
          (mapcar
           (lambda (target)
             (list el-get-emacs
                   (mapcar (lambda (pkg)
                             (mapcar (lambda (d) `("-L" ,d)) (el-get-load-path pkg)))
                           '("apel" "flim"))
                   (split-string "-batch -q -no-site-file -l SEMI-MK -f")
                   target
                   "prefix" "site-lisp" "site-lisp"))
           '("compile-semi" "install-semi")))
         :load-path ("site-lisp/semi/"))
        (:name wanderlust
         :depends semi
         :type git
         :url "git://github.com/wanderlust/wanderlust.git"
         :build (mapcar
                 (lambda (target-and-dirs)
                   (list el-get-emacs
                         (mapcar (lambda (pkg)
                                   (mapcar (lambda (d) `("-L" ,d)) (el-get-load-path pkg)))
                                 (append
                                  '("apel" "flim" "semi")
                                  (when (el-get-package-exists-p "bbdb") (list "bbdb"))))
                         "--eval" (prin1-to-string
                                   '(progn (setq wl-install-utils t)
                                     (setq wl-info-lang "en")
                                     (setq wl-news-lang "en")))
                         (split-string "-batch -q -no-site-file -l WL-MK -f")
                         target-and-dirs))
                 '(("wl-texinfo-format" "doc")
                   ("compile-wl-package"  "site-lisp" "icons")
                   ("install-wl-package" "site-lisp" "icons")))
         :info "doc/wl.info"
         :load-path ("site-lisp/wl" "utils"))
        (:name ps-ccrypt
         :type http
         :url "http://ccrypt.sourceforge.net/ps-ccrypt.el"
         :post-init (require 'ps-ccrypt)
         :features ps-ccrypt)
	(:name igrep
         :type emacsmirror)
        (:name color-theme-less :type http :url "http://jblevins.org/git/misc.git/plain/color-theme-less.el")
        (:name magit :after (progn (global-set-key (kbd "C-x C-m") 'magit-status)))))

(setq my-packages
      (append
       '(el-get elhome ergoemacs-keybindings emacs-jabber vkill speck csv-mode
         eval-sexp-fu rainbow-delimiters paredit paredit-extension parenthesis parenface
         highlight highlight-parentheses highlight-sexp highlight-symbol smex
         skype js2-mode color-theme
	 auto-complete ac-slime ac-dabbrev
)
       (mapcar 'el-get-source-name el-get-sources)))
(add-hook 'el-get-post-install-hooks 'el-get-init)

(el-get 'sync my-packages)

(require 'elhome)
(elhome-init)
