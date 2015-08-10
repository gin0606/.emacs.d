;;; 80_flycheck.el --- 最低限のものを入れる
;;; Commentary:
;;; Code:

(el-get-bundle 'flycheck)
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

(provide '80_flycheck)
;;; 80_flycheck.el ends here
