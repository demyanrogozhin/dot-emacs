(if (boundp 'mail-user-agent)
	(setq mail-user-agent 'wl-user-agent))
(if (fboundp 'define-mail-user-agent)
	(define-mail-user-agent
	  'wl-user-agent
	  'wl-user-agent-compose
	  'wl-draft-send
	  'wl-draft-kill
	  'mail-send-hook))
(setq mime-image-format-alist
      '((image jpg    jpeg)
 	(image jpeg   jpeg)
 	(image gif    gif)
 	(image tiff   tiff)
 	(image x-tiff tiff)
 	(image xbm    xbm)
 	(image x-xbm  xbm)
 	(image x-xpixmap xpm)
 	(image png    png))) ;WL enable the display of image attachments

(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)
(autoload 'wl-user-agent-compose "wl-draft" nil t)



(defconst tramp-ssh-controlmaster-options
  (let ((result ""))
    result)
    "Not use ControlMaster arguments ( sets in ~/.ssh/config ).
Return a string to be used in `tramp-methods'.")
