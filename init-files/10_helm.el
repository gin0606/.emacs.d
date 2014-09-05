;;; 10_helm.el --- helm
;;; Commentary:
;;; Code:

(quelpa 'helm)
(require 'helm-config)

(global-set-key (kbd "C-;") 'helm-mini)
(helm-mode 1)

(provide '10_helm)
;;; 10_helm.el ends here
