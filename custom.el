;; Display
(global-linum-mode)
(column-number-mode t)
(show-paren-mode t)
(global-hl-line-mode 1)
(setq frame-title-format "%b@yawl2u")

;; maximize frame on start-up
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; default font
(set-face-attribute 'default nil
		    :family "Fira Code"
		    :height 140
		    :weight 'normal
		    :width 'normal)

;; Remove
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)
(setq ring-bell-function 'ignore)

;; store all backup files
(setq backup-directory-alist '(("." . "~/.emacs.d/.saves")))
(setq make-backup-files t     ; backup of a file the first time it is saved.
      backup-by-copying t     ; dont clobber symlinks
      version-control t       ; version numbers for backup files
      delete-old-versions t   ; delete excess backup files silently
      delete-by-moving-to-trash t
      kept-old-versions 6     ; oldest versions to keep when a new numbered backup is made (default: 2)
      kept-new-versions 9
      auto-save-default t     ; auto-save every buffer that visits a file
      auto-save-timeout 20    ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 200  ; number of keystrokes between auto-saves (default: 300)
      )

;; the max delete recording
(setq kill-ring-max 200)

(fset 'yes-or-no-p 'y-or-n-p)
