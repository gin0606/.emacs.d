;;; init.el --- いろいろなものを使う前提になるやつ入れる
;;; Commentary:
;;; Code:

;; el-get
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get-bundle 'tarao/el-get-lock)
(el-get-lock)

(el-get-bundle 'exec-path-from-shell)
(exec-path-from-shell-initialize)
(let ((envs '("PATH")))
  (exec-path-from-shell-copy-envs envs))

;; 鬼軍曹
(el-get-bundle 'drill-instructor)
(require 'drill-instructor)
(setq drill-instructor-global t)

;; init-loader
(el-get-bundle 'init-loader)
(require 'init-loader)
(init-loader-load "~/.emacs.d/init-files")
(custom-set-variables  '(init-loader-byte-compile t))

;;; init.el ends here
