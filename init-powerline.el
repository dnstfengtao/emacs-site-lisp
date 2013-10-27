(setq powerline-arrow-shape 'arrow)   ;; the default
(setq powerline-arrow-shape 'curve)   ;; give your mode-line curves
(setq powerline-arrow-shape 'arrow14) ;; best for small fonts

;;--------------------------------------------------------------------------------
;; this config is suit for mode powerline-vim
;;--------------------------------------------------------------------------------
(custom-set-faces
 '(mode-line ((t (:foreground "#ffffff" :background "#000000" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

;;--------------------------------------------------------------------------------
;; this config is suit for mode powerline-center
;;--------------------------------------------------------------------------------
;;(custom-set-faces
;; '(mode-line ((t (:foreground "#ffffff" :background "#bdbdbd" :box nil))))
;; '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
 
(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")
;;--------------------------------------------------------------------------------
;; define default powerline theme for my emacs 
;;--------------------------------------------------------------------------------
(powerline-vim-theme)
;;(powerline-center-theme)

;;--------------------------------------------------------------------------------
;; author information
;;--------------------------------------------------------------------------------
;; author : fengjiantao
;; createTime : 2013-10-27 15:47:27
;; emailAddresss : 502359010@qq.com
