(ergoemacs-mode 1)
;; Single char cursor movement
(defconst ergoemacs-next-line-key (kbd "M-j"))
(defconst ergoemacs-previous-line-key (kbd "M-k"))
(defconst ergoemacs-backward-char-key (kbd "M-h"))
(defconst ergoemacs-expand-key (kbd "M-i"))

;; Move to beginning/ending of line
(defconst ergoemacs-move-beginning-of-line-key		(kbd "M-H"))
(defconst ergoemacs-move-end-of-line-key		(kbd "M-L"))

;; Move by screen (page up/down)
(defconst ergoemacs-scroll-down-key			(kbd "M-K"))
(defconst ergoemacs-scroll-up-key			(kbd "M-J"))

;; Move to beginning/ending of file
(defconst ergoemacs-beginning-of-buffer-key		(kbd "M-<"))
(defconst ergoemacs-end-of-buffer-key			(kbd "M->"))

(define-key ergoemacs-keymap ergoemacs-backward-char-key 'backward-char)
(define-key ergoemacs-keymap ergoemacs-previous-line-key 'previous-line)
(define-key ergoemacs-keymap ergoemacs-next-line-key 'next-line)
(define-key ergoemacs-keymap ergoemacs-expand-key 'hippie-expand)
(define-key ergoemacs-keymap ergoemacs-move-end-of-line-key 'move-end-of-line)
(define-key ergoemacs-keymap ergoemacs-move-beginning-of-line-key 'move-beginning-of-line)
(define-key ergoemacs-keymap ergoemacs-scroll-down-key 'scroll-down)
(define-key ergoemacs-keymap ergoemacs-scroll-up-key 'scroll-up)
(define-key ergoemacs-keymap ergoemacs-beginning-of-buffer-key 'beginning-of-buffer)
(define-key ergoemacs-keymap ergoemacs-end-of-buffer-key 'end-of-buffer)

(ergoemacs-global-unset-key (kbd "M-I"))

;; (define-key ergoemacs-minibuffer-keymap (kbd "M-k") 'previous-history-element)
;; (define-key ergoemacs-minibuffer-keymap (kbd "M-j") 'next-history-element)
;; (define-key ergoemacs-eshell-keymap (kbd "M-H") 'eshell-bol)
; work just well after Minibuffer- and Eshell- hooks

;;; --------------------------------------------------
;;; RECLAIM SOME BINDINGS
(define-key me-minor-mode-map (kbd "C-l") 'recenter-top-bottom)
(define-key me-minor-mode-map (kbd "C-x C-d") 'dired)
;; ;; isearch
;; (define-key isearch-mode-map [(meta z)] 'ret-c-w) ;;FIXME!!
(define-key me-minor-mode-map (kbd "M-1") 'delete-other-windows)
(define-key me-minor-mode-map (kbd "M-2") 'split-window-vertically)
(define-key me-minor-mode-map (kbd "M-3") 'split-window-horizontally)
(define-key me-minor-mode-map (kbd "M-4") 'ctl-x-4-prefix)
(define-key me-minor-mode-map (kbd "M-6") ctl-x-r-map)
(define-key me-minor-mode-map (kbd "M-9") 'switch-to-buffer)
;; some lisp helpers
(define-key me-minor-mode-map (kbd "M-n") 'forward-list)
(define-key me-minor-mode-map (kbd "M-y") 'backward-list)
(define-key me-minor-mode-map (kbd "M-p") 'forward-list)
;; nice for files and urls
(define-key me-minor-mode-map (kbd "C-o") 'find-file-at-point)

(global-unset-key (kbd "C-z"))
(define-key me-minor-mode-map "\M-\C-y" 'kill-ring-search)
;; (define-key me-minor-mode-map (kbd "C-c RET") 'browse-url-at-point) ; C-o=find-file-at-point
(define-key me-minor-mode-map (kbd "C-x 8 <right>") '(lambda () (interactive) (insert (decode-char 'ucs 8594))))
(define-key me-minor-mode-map (kbd "C-x 8 <left>") '(lambda () (interactive) (insert (decode-char 'ucs 8592))))

(define-key me-minor-mode-map (kbd "C-z C-r") 'remember)
(define-key me-minor-mode-map (kbd "C-z a") 'org-agenda)
(define-key me-minor-mode-map (kbd "C-z C-a") 'org-agenda-list)
(define-key me-minor-mode-map (kbd "C-z b") 'bury-buffer)
(define-key me-minor-mode-map (kbd "C-z r") 'org-remember-goto-last-stored)
(define-key me-minor-mode-map (kbd "C-z l") 'org-store-link)
;;(define-key me-minor-mode-map (kbd "C-z k") 'kill-buffer-now-dmn) ; C-w
(define-key me-minor-mode-map (kbd "C-z b") 'bbdb)
(define-key me-minor-mode-map (kbd "C-z m") 'emms-playlist-mode-go)
;;(define-key me-minor-mode-map (kbd "C-x C-b") 'ibuffer)
;;keys in magit, wl and jabber
(define-key me-minor-mode-map (kbd "C-z g") 'magit-status)
(define-key me-minor-mode-map (kbd "C-z w") 'wl)
(define-key me-minor-mode-map (kbd "C-z j") 'jabber-switch-to-roster-buffer)
(define-key me-minor-mode-map (kbd "C-z C-j") 'jabber-connect-all)
;;(define-key me-minor-mode-map "\C-zt" 'twitter-get-friends-timeline)
(define-key me-minor-mode-map (kbd "C-z n") 'gnus)
(define-key me-minor-mode-map (kbd "C-z +") 'my-increment-number)
(define-key me-minor-mode-map (kbd "C-z -") 'my-decrement-number)
;;global for SLIME
(define-key me-minor-mode-map (kbd "C-c s") 'slime-selector)
(define-key me-minor-mode-map (kbd "C-z s") 'slime-selector)
;;; override paredit 
(define-key me-minor-mode-map ergoemacs-isearch-forward-key 'isearch-forward)
;;
(define-key me-minor-mode-map (kbd "C-z t o e") 'typing-of-emacs)

;; (define-key slime-repl-mode-map (kbd "C-;") 'slime-insert-balance-comments) ;where is that func?
(define-key global-map [f5] '(lambda () (interactive) (activate-input-method ())))
(define-key global-map [f7] '(lambda () (interactive) (activate-input-method "russian-computer")))
;(define-key me-minor-mode-map [menu] 'toggle-input-method)
;(define-key isearch-mode-map [menu] 'isearch-toggle-input-method)

; Fix arrows in terminal
;; http://code.google.com/p/ergoemacs/issues/detail?id=37
(ergoemacs-global-unset-key (kbd "M-O"))
