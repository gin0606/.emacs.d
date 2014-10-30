;;; 90_ruby.el --- Ruby                              -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
(require 'ruby-mode)
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (setq tab-width 2)
	     (setq ruby-indent-level tab-width)
	     (setq ruby-deep-indent-paren-style nil)
	     (define-key ruby-mode-map [return] 'reindent-then-newline-and-indent)))
(defadvice ruby-indent-line (after unindent-closing-paren activate)
  "Rubyのindentをいい感じにしてくれる http://willnet.in/13 ."
  (let ((column (current-column))
	indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
	(setq offset (- column (current-column)))
	(when (and (eq (char-after) ?\))
		   (not (zerop (car state))))
	  (goto-char (cadr state))
	  (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))

(quelpa 'ruby-end)
(require 'ruby-end)

(quelpa 'ruby-block)
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

(provide '90_ruby)
;;; 90_ruby.el ends here
