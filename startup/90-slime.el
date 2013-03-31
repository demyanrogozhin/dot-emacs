(if 
    (not windows-p)
    (progn
      (require 'slime-autoloads)

      (el-get-install 'slime-js)
      (el-get-init 'slime-js)

      (slime-setup '(slime-repl
                     ;; slime-fuzzy
                     ))

      ;; Replace "sbcl" with the path to your implementation
      (setq inferior-lisp-program "sbcl")
      (setq slime-net-coding-system 'utf-8-unix)
      (define-key lisp-mode-shared-map (kbd "RET") 'reindent-then-newline-and-indent)))
