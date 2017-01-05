;;----------------------------------------------------------------------------
;; Package dependencies defination
;;----------------------------------------------------------------------------
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")))
;;----------------------------------------------------------------------------
;; Path config.
;;----------------------------------------------------------------------------
(defconst my-emacs-path "~/.emacs.d/" "My Emacs init path.")
(defconst my-emacs-lisp-path (concat my-emacs-path "lisp/") "lisp path")
(defconst my-emacs-elpa-path (concat my-emacs-path "elpa/") "elpa path")
;;----------------------------------------------------------------------------
;; Pre load.
;;----------------------------------------------------------------------------
; load init-subdirs.el to load all files in the root directory.
(load (concat my-emacs-lisp-path "init-subdirs"))
;;----------------------------------------------------------------------------
;; Pre-defined laod path.
;;----------------------------------------------------------------------------
(my-add-subdirs-to-load-path my-emacs-lisp-path)
(my-add-subdirs-to-load-path my-emacs-elpa-path)
;;----------------------------------------------------------------------------
;; Initial definition file.
;;----------------------------------------------------------------------------
;; Should firstly load this file.
(load "init-customize.el")
;;----------------------------------------------------------------------------
(load "init-theme.el")
(load "init-smex.el")
(load "init-python.el")
(load "init-pyflakes.el")
(load "init-groovy.el")
(load "init-c++.el")
(load "init-company.el")
;;----------------------------------------------------------------------------
;; Config system show and view or some feature and mode
;;----------------------------------------------------------------------------
;; do not back up file
(setq-default make-backup-files nil)
;; replace tab with same count space when type tab
;; Make sure spaces are used when indenting code
(setq-default indent-tabs-mode nil)
;; close auto run message
(setq inhibit-startup-message t)
;; close tool bar
(tool-bar-mode nil)
;;(menu-bar-mode nil)
;; close scroll bar
(scroll-bar-mode nil)
;; open mysql console callback
(setq sql-mysql-options '("-C" "-t" "-f" "-n"))
;; set encoding system
(prefer-coding-system 'utf-8)
(setq current-language-environment "UTF-8")
;; set mouse event for up or down font size
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)
;; mode
(global-linum-mode 1)

;;----------------------------------------------------------------------------
;; This config is auto-generated by emacs option menu-bar configuer function
;;----------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(current-language-environment "UTF-8")
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(truncate-lines nil))


;;----------------------------------------------------------------------------
;; Define author and email information
;;----------------------------------------------------------------------------
(setq user-mail-address "finleyfeng@hotmail.com")
(setq user-full-name "finleyfeng")
;; author: finleyfeng
;; email: fengjiantao@hotmail.com
;; End~
