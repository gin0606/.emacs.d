;;; init.el --- 最低限のものを入れる
;;; Commentary:
;;; Code:
;; quelpa
(package-initialize)
(if (require 'quelpa nil t)
    (defvar quelpa-update-melpa-p nil)
    (quelpa-self-upgrade)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))

;; init-loader
(quelpa 'init-loader)
(require 'init-loader)
(init-loader-load "~/.emacs.d/init-files")
(custom-set-variables  '(init-loader-byte-compile t))

;; inits
(quelpa 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(custom-set-variables '(initial-frame-alist
			(quote (
				(fullscreen . maximized)
				(foreground-color . "White")
				(background-color . "Black")
				(cursor-color . "Gray")
				(alpha . 90)
				))))
(custom-set-variables '(default-frame-alist initial-frame-alist))
(provide 'init)
;;; init.el ends here
