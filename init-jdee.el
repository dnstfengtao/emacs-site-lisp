;; This .emacs file illustrates the minimal setup
;; required to run the JDEE.
;; Set the debug option to enable a backtrace when a
;; problem occurs.
(setq debug-on-error t)
;; Update the Emacs load-path to include the path to
;; the JDEE and its require packages. This code assumes
;; that you have installed the packages in the
;; /usr/local/emacs/site-lisp directory. Adjust appropriately.
(add-to-list 'load-path
(expand-file-name "F:/Emacs/site-lisp/plugins/jdee-2.4.1/lisp"))
(add-to-list 'load-path
(expand-file-name "F:/Emacs/site-lisp/plugins/cedet-1.1/semantic"))
(add-to-list 'load-path
(expand-file-name "F:/Emacs/site-lisp/plugins/cedet-1.1/speedbar"))
(add-to-list 'load-path
(expand-file-name "F:/Emacs/site-lisp/plugins/cedet-1.1/eieio"))
(add-to-list 'load-path
(expand-file-name "F:/Emacs/site-lisp/plugins/cedet-1.1/elib"))
;; If you want Emacs to defer loading the JDEE until you open a
;; Java file, edit the following line
(setq defer-loading-jde nil)
;; to read:
;;
;; (setq defer-loading-jde t)
;;
(if defer-loading-jde
(progn
(autoload 'jde-mode "jde" "JDE mode." t)
(setq auto-mode-alist
(append
'(("\\.java\\'" . jde-mode))
auto-mode-alist)))
(require 'jde))
;; Set the basic indentation for Java source files
;; to two spaces.
(add-hook 'jde-mode-hook
'(lambda ( )
(setq c-basic-offset 4)
(setq jde-jdk-registry '(("1.7.0_25" . "C:/Program Files/Java/jdk1.7.0_25")))
(setq jde-jdk '("1.7.0_25"))
))
;; Include the following only if you want to run
;; bash as your shell.
;; Set up Emacs to run bash as its primary shell.
(setq shell-file-name "bash")
(setq shell-command-switch "-c")
(setq explicit-shell-file-name shell-file-name)
(setenv "SHELL" shell-file-name)
(setq explicit-sh-args '("-login" "-i"))
(if (boundp 'w32-quote-process-args)
(setq w32-quote-process-args ?\")) ;; Include only for MS Windows.

(setq jde-check-version-flag nil)
