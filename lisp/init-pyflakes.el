;; python synatx check
;; This line is very import this will add the python script into the emacs 
;; execution path, so add this line then flymake can check python code
;; by pyflakes
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "pyflakes" (list local-file))))

  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))
;; This line is very important is for auto open the flymake mode when
;; current is python mode
(add-hook 'python-mode-hook 'flymake-mode)
