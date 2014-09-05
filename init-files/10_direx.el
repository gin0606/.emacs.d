;;; 10_direx.el --- direx
;;; Commentary:
;;; Code:

(quelpa 'direx)
(require 'direx)

(global-set-key (kbd "C-x C-j") 'direx-project:jump-to-project-root)

(provide '10_direx)
;;; 10_direx ends here
