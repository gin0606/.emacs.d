;;; 90_go.el --- go lang
;;; Commentary:
;;; Code:

(quelpa 'go-mode)
(quelpa 'go-autocomplete)
(quelpa 'go-eldoc)
 
(require 'go-mode)
(require 'auto-complete)
(require 'go-autocomplete)

(defun my-go-mode-hook ()
  "My go-mode settings."
  (add-hook 'before-save-hook 'gofmt-before-save)
  (setq tab-width 2 indent-tabs-mode 1))
(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide '90_go)
;;; 90_go.el ends here
