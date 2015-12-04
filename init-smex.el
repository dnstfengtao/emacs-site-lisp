;;----------------------------------------------------------------------------
;; This is the smex configuration
;;----------------------------------------------------------------------------
;; Tips autoload can replace (require 'smex) command.
(autoload 'smex "smex"
  "Smex is a M-x enhancement for Emacs, it provides a convenient interface to
your recently and most frequently used commands.")
;; key binding override
(global-set-key (kbd "M-x") 'smex)
