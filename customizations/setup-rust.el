
;; Rust Mode activation
(require 'rust-mode)

;; Path to the sources of rust
(setq racer-rust-src-path "c:/rust/src")

;; Racer for rust-mode
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)


;; autocomplete
(define-key rust-mode-map (kbd "<C-return>") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

