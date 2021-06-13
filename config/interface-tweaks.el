;; ====== all-the-icons ======
(use-package all-the-icons)
;; ====== all-the-icons ======

;; ====== doom-themes ======
(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
	doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-gruvbox t)

  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))
;; ====== doom-themes ======

;; ====== doom-modeline ======
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))
(setq doom-modeline-height 1)
;; ====== doom-modeline ======
