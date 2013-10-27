;;; wget.el --- wget interface for emacs

;; Copyright (C) 1997-2000 Free Software Foundation, Inc.

;; Author: Kevin A. Burton (address@hidden)
;; Maintainer: Kevin A. Burton (address@hidden)
;; Location: http://relativity.yi.org
;; Keywords: wget
;; Version: 1.0.2

;; This file is [not yet] part of GNU Emacs.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Changelog:

;; - Mon Oct 29 2001 07:04 PM (address@hidden): modernized for Emacs 21.
;; 

;; Version 1.0.1:
;;
;; - Correctly paying attention to stderr.  Invalid URLs will not be detected
;;   and the user notified.
;;
;; - Create a new *wget* buffer for each new URL and dont' reuse the same
;;   buffer.
;;
;; - supports --save-headers from wget
;;
;; - http:// is now specified as the init for input
;;
;; - have wget-mode that highlights the firsts
;;   lines of  the buffer until the regexp ^$

;; Version 1.0:
;; init.

;;; Commentary:

;; This is an interface for wget.  Basically it allows you to pull down URLs
;; and then view the output in a buffer.  This is a too to help develop/debug
;; web applications.

;; TODO:

;; - change this library to url-util so that it isn't specific to wget

;; - include a mechanism to support posting content to a webserver.  This
;;   would prompt for the URL, method (get|post), and any specific HTTP headers
;;   to send.  It should save this URL and all its params in memory for future
;;   use. The the user can repeat this again.

;; - stop using wget... instead use open-network-stream

;;; Code:
(defface wget-headers-face '((t (:foreground "GoldenRod" :bold t)))
  "Face used to highlight the HTTP headers in the buffer.")

(defun wget(&optional url)
  (interactive)

  ;;if interactively executed... prompt for a URL.
  (if (string= url nil)
      (setq url (read-string "URL: " "")))

  ;;clear the wget buffer
  (wget-init url)

  (message (concat "Fetching " url " ... please wait."))

  (shell-command (concat "wget --save-headers --output-document=/dev/stdout 
--non-verbose "
                         url)
                 (wget-get-buffer url)
                 (wget-get-buffer url))

  (message (concat "DONE Fetching " url))

  (beginning-of-buffer)
  (wget-highlight-buffer))

(defun wget-init(url)
  "Clear the temp wget buffer if there is data in it"

  ;;switch to the correct buffer
  (view-buffer (wget-get-buffer url))

  (mark-whole-buffer)

  ;;if the wget buffer is full reset it
  (if (> (buffer-size) 0)
      (delete-region (region-beginning) (region-end))))

(defun wget-get-buffer(url)
  ;;based on the url... get a correct temporary buffer.
  (concat "*wget " url "*"))

(defun wget-highlight-buffer()
  
  (save-excursion
    (insert 
"--------------------------------------------------------------------------------\n")
    (search-forward-regexp "^$" nil t)
    (insert 
"--------------------------------------------------------------------------------\n")
    (end-of-line)

    (setq current-overlay (make-overlay 1 (point)))
      
    (overlay-put current-overlay 'face 'wget-headers-face)
    
    (overlay-put current-overlay 'window (selected-window))))

(provide 'wget)

;;; wget.el ends here
