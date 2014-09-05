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

(setq ac-clang-cflags
      (split-string
       (shell-command-to-string (concat (executable-find "clang-complete-helper") " cflags "
                                        (and buffer-file-name
                                             (file-relative-name buffer-file-name))))))

(provide '90_cpp)
;;; 90_cpp.el ends here
