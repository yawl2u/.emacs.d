;; ====== all-the-icons ======
(use-package all-the-icons)
;; ====== all-the-icons ======

;; ====== neotree ======
(use-package neotree
  :ensure t
  :bind ("<f8>" . 'neotree-toggle)
  :init
  ;; slow rendering
  (setq inhibit-compacting-font-caches t)

  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))

  ;; Every time when the neotree window is opened, let it find current file and jump to node
  (setq neo-smart-open t)

  ;; show hidden files
  (setq-default neo-show-hidden-files t))
;; ====== neotree ======

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
