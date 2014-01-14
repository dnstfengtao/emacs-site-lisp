(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)
(setq sr-speedbar-width 40)
(setq sr-speedbar-right-side nil)

(global-set-key (kbd "<f5>") (lambda()
                               (interactive)
                               (sr-speedbar-toggle)))
