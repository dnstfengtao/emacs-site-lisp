(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; define key binding
(setq company-backends (delete 'company-semantic company-backends))
(define-key c-mode-map  [(C-tab)] 'company-complete)
(define-key c++-mode-map  [(C-tab)] 'company-complete)
