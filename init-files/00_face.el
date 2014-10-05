;;; 00_face.el --- 見た目の設定                      -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
(custom-set-variables '(initial-frame-alist
                       (quote (
                               (fullscreen . maximized)
                               ))))
(custom-set-variables '(default-frame-alist initial-frame-alist))

(quelpa 'powerline)
(powerline-default-theme)

(add-to-list 'load-path "~/.emacs.d/themes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'tomorrow-night-eighties t)

(provide '00_face)
;;; 00_face.el ends here
