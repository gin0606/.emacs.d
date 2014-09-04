;;; init.el --- 最低限のものを入れる
;;; Commentary:
;;; Code:
;; quelpa
(package-initialize)
(if (require 'quelpa nil t)
    (defvar quelpa-update-melpa-p nil)
    (quelpa-self-upgrade)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))

;; init-loader
(quelpa 'init-loader)
(require 'init-loader)
(init-loader-load "~/.emacs.d/init-files")
(custom-set-variables  '(init-loader-byte-compile t))

;; inits
(quelpa 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(custom-set-variables '(initial-frame-alist
			(quote (
				(fullscreen . maximized)
				(foreground-color . "White")
				(background-color . "Black")
				(cursor-color . "Gray")
				(alpha . 90)
				))))
(custom-set-variables '(default-frame-alist initial-frame-alist))

;; 文字とかフォントとかの設定
(defvar-local font-name "Ricty")

(set-face-attribute 'default nil
                    :family font-name
                    :height 135)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (cons font-name font-name))
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0212
                  (cons font-name font-name))
(set-fontset-font (frame-parameter nil 'font)
                  'katakana-jisx0201
                  (cons font-name font-name))
(provide 'init)
;;; init.el ends here
