;;----------------------------------------------------------------------------
;; Package dependencies defination
;;----------------------------------------------------------------------------
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")))
;;----------------------------------------------------------------------------
;; Pre-defined laod path.
;;----------------------------------------------------------------------------
(setq load-path (append load-path (list "~/.emacs.d")))
(setq load-path (append load-path (list "~/.emacs.d/elpa/color-theme-6.6.1")))
(setq load-path (append load-path (list "~/.emacs.d/elpa/color-theme-zenburn-0.3")))
;;----------------------------------------------------------------------------
;; Initial definition file.
;;----------------------------------------------------------------------------
(load "init-theme.el")
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
;; set how much lines and columns the emacs-frame default show
(setq default-frame-alist '( (width . 120) (height . 40)))
;;----------------------------------------------------------------------------
;; Configuration Windows Font this is very important for
;; windows user beacause a nice font will take a nice day
;;----------------------------------------------------------------------------
;; Setting English Font
(set-face-attribute 'default nil :font "Consolas 14")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "Microsoft Yahei" :size 14)))
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
