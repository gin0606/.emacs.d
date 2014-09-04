;;; 30_git.el --- git関係の設定
;;; Commentary:
;;; Code:

(quelpa 'magit)
(require 'magit)

(quelpa 'git-gutter+)
(global-git-gutter+-mode t)

(provide '30_git)
;;; 30_git.el ends here
