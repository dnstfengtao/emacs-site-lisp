;; -*- no-byte-compile: t -*-
;;(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
;;    (normal-top-level-add-subdirs-to-load-path))

(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
(let* ((my-lisp-dir "F:/Emacs/site-lisp/plugins/")
(default-directory my-lisp-dir))
(setq load-path (cons my-lisp-dir load-path))
(normal-top-level-add-subdirs-to-load-path)))
