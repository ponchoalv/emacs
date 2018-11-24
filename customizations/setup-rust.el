
;; Rust Mode activation
(require 'rust-mode)

;; Racer for rust-mode
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'rust-mode-hook #'cargo-minor-mode)

;; autocomplete
(define-key rust-mode-map (kbd "<C-return>") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

