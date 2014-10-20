;;; 90_ruby.el --- Ruby                              -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
(require 'ruby-mode)
(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq ruby-indent-level tab-width)
             (setq ruby-deep-indent-paren-style nil)
             (define-key ruby-mode-map [return] 'ruby-reindent-then-newline-and-indent)))

(quelpa 'ruby-end)
(require 'ruby-end)

(quelpa 'ruby-block)
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

(provide '90_ruby)
;;; 90_ruby.el ends here
