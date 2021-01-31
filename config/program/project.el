;; ====== ivy ======
(use-package ivy
  :ensure t
  :diminish (ivy-mode)
  :bind (("C-x b" . ivy-switch-buffer))
  :config
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-count-format "%d/%d ")
    (setq ivy-display-style 'fancy))
;; ====== ivy ======

;; ====== counsel ======
(use-package counsel
  :ensure t
  :bind
    (("M-y" . counsel-yank-pop)
     :map ivy-minibuffer-map
     ("M-y" . ivy-next-line)))
;; ====== counsel ======

;; ====== swiper ======
(use-package swiper
  :ensure t
  :bind (("C-s" . swiper-isearch)
	 ("C-r" . swiper-isearch)
	 ("C-c C-r" . ivy-resume)
	 ("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)))
;; ====== swiper ======

;; ====== projectile ======
(use-package projectile
  :ensure t
  :bind (:map projectile-mode-map
              ("s-p" . 'projectile-command-map)
              ("C-c p" . 'projectile-command-map))
  :config 
  (setq projectile-completion-system 'ivy)
  (projectile-mode +1))
;; ====== projectile ======

