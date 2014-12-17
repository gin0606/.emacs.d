;;; 90_text.el ---                                   -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(quelpa 'open-junk-file)

(require 'open-junk-file)
(setq open-junk-file-format "~/Dropbox/Documents/junk-files/%Y-%m-%d-%H%M%S.org")
(global-set-key (kbd "C-x j") 'open-junk-file)

(provide '90_text)
;;; 90_text.el ends here
