;;; 90_haskell.el --- haskell                        -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(quelpa 'haskell-mode)
(require 'haskell-mode)
(require 'haskell-cabal)

(add-hook 'haskell-mode-hook 'haskell-indent-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(provide '90_haskell)
;;; 90_haskell.el ends here
