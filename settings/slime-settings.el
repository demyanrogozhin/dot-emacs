;(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-mode-hook
          '(lambda ()
            (company-mode 1)
            (set (make-local-variable 'company-backends)
                 '(slime-company-backend))))

;; Настроим хоткеи для автодополнения и выравнивания отступов
(define-key slime-mode-map (kbd "TAB")
  'slime-indent-and-complete-symbol)
(define-key slime-mode-map (kbd "C-c TAB")
  'slime-complete-symbol)

;; Это включает алгоритмы выравнивания лиспового кода из SLIME,
;;   в противоположность стандартным из Emacs
(setq lisp-indent-function 'common-lisp-indent-function)

;; Немного настроим выравнивание отступов под себя
;; Более подробно о кастомизации этого дела можно почитать
;;   в сорцах SLIME, а именно
;;     в %путь_к_slime%/contrib/slime-cl-indent.el
;; (define-common-lisp-style "my-indent-style"
;;   "My custom indent style."
;;   (:inherit "modern")
;;   (:variables
;;    (lisp-loop-indent-subclauses t))    
;;   (:indentation
;;    (if (4 2 2))
;;    (define (&lambda 2))
;;    (with-gensyms ((&whole 4 &rest 1) &body))
;;    (once-only (as with-gensyms))))
;;(setq common-lisp-style-default "my-indent-style")
