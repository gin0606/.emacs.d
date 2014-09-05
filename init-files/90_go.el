;;; 90_go.el --- go lang
;;; Commentary:
;;; Code:

(quelpa 'go-mode)
(quelpa 'go-autocomplete)
(quelpa 'go-eldoc)
 
(require 'go-mode)
(require 'go-autocomplete)

(add-hook 'before-save-hook 'gofmt-before-save)

(provide '90_go)
;;; 90_go.el ends here
