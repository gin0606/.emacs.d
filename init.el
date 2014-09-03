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
(provide 'init)
;;; init.el ends here
