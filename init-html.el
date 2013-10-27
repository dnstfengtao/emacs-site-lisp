(add-hook 'html-mode-hook
          (lambda ()
            ;;Default indentantion is usually 2 spaces,changing to 4.
            (set (make-local-variable 'sgml-basic-offset) 4)))

(add-hook 'sgml-mode-hook
          (lambda ()
            ;; Default indentation to 2, but let SGML mode guess, too.
            (set (make-local-variable 'sgml-basic-offset) 2)
            (sgml-guess-indent)))
