;;; 20_autoinsert.el --- autoinsert
;;; Commentary:
;;; Code:
(add-hook 'find-file-hooks 'auto-insert)
(defvar auto-insert-directory "~/.emacs.d/auto-insert-templates")

(provide '20_autoinsert)
;;; 20_autoinsert.el ends here
