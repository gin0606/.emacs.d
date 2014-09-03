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
(provide 'init)
;;; init.el ends here
