;; the c++ model
(setq c-basic-offset 4)
(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "awk")))
