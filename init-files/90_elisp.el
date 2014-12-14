;;; 90_elisp.el ---                                  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(quelpa 'rainbow-delimiters)
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)

(provide '90_elisp)
;;; 90_elisp.el ends here
