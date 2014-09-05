;;; 90_cpp.el --- cpp edit setting
;;; Commentary:
;;; Code:

(quelpa 'auto-complete-clang-async)
(require 'auto-complete-clang-async)

(defun ac-cc-mode-setup ()
  "Setup ac-cc-mode."
  (setq ac-clang-complete-executable "~/.emacs.d/bin/clang-complete")
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process)
)

(defun my-ac-config ()
  "Set ac-config."
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'c++-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(my-ac-config)


(provide '90_cpp)
;;; 90_cpp.el ends here
