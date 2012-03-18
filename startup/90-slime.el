(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; (require 'slime-autoloads)
;; ;; Модули SLIME, которые мы подключаем
;; ;;  Тут указанные - это, по моему мнению, базовый минимум.
;; ;;  В дальнейшем можете сами подробнее почитать о них
;; ;;    в мануале SLIME.
(el-get-install 'slime-js)

(slime-setup '(slime-repl
               slime-fuzzy
               slime-fancy-inspector
               slime-indentation
               slime-fancy
               slime-scratch
               slime-company))

;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")
(setq slime-net-coding-system 'utf-8-unix)
(define-key lisp-mode-shared-map (kbd "RET") 'reindent-then-newline-and-indent)