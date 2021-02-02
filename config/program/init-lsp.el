(use-package lsp-mode
  :bind
  (:map lsp-mode-map
	(("\C-\M-b" . lsp-find-implementation)
	 ("M-RET"   . lsp-execute-code-action)))
  :config
  (setq lsp-inhibit-message t
	lsp-eldoc-render-all nil
	lsp-enable-file-watchers nil
	lsp-enable-symbol-highlighting nil
	lsp-headerline-breadcrumb-enable nil
	lsp-highlight-symbol-at-point nil
	lsp-modeline-code-actions-enable nil
	lsp-modeline-diagnostics-enable nil
	)
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-idle-delay 0.500)
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (java-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package hydra
  :ensure t)
(use-package company-lsp
  :ensure t)
(use-package lsp-ui
  :config
  (setq lsp-prefer-flymake nil
	lsp-ui-doc-delay 0.5
	lsp-ui-sideline-enable nil
	lsp-ui-sideline-show-symol nil)
  :after lsp-mode)

(use-package lsp-java
  :ensure t
  :init
  (setq
   lsp-java-server-install-dir "~/.emacs.d/eclipse.jdt.ls/server/"

   lsp-java-import-order '["" "java" "javax" "#"]
   ;; Don't organise imports on save
   lsp-java-save-action-organize-imports nil

   ;; Fetch less results from the Eclipse server
   lsp-java-completion-max-results 20

   lsp-java-format-enabled t

   lsp-java-java-path "/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/bin/java")
  :config (add-hook 'java-mode-hook #'lsp))

(use-package dap-mode
  :ensure t
  :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t)
  (dap-tooltip-mode 1)
  (tooltip-mode 1)
  (dap-register-debug-template
   "localhost:5005"
   (list :type "java"
	 :request "attach"
	 :hostName "localhost"
	 :port 5005)))

(use-package dap-java
  :ensure nil
  :after (lsp-java)
  :config 
  (global-set-key (kbd "<f7>") 'dap-step-in)
  (global-set-key (kbd "<f8>") 'dap-next)
  (global-set-key (kbd "<f9>") 'dap-continue)
  )
