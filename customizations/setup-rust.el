(setq rust-format-on-save t)

;; Rust Mode activation
(require 'rust-mode)
(require 'racer)
(require 'rust-mode)
(require 'electric)
(require 'eldoc)
(require 'flycheck)
(require 'flycheck-rust)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(setq racer-cmd (executable-find "racer.exe"))

;; Racer for rust-mode
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'rust-mode-hook #'cargo-minor-mode)

(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

;; autocomplete
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(electric-pair-mode 1)
(setq company-tooltip-align-annotations t)
