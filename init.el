;;; init.el --- 最低限のものを入れる
;;; Commentary:
;;; Code:
;; quelpa
(package-initialize)
(if (require 'quelpa nil t)
    (quelpa-self-upgrade)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))
(defvar quelpa-update-melpa-p nil)

;; init-loader
(quelpa 'init-loader)
(require 'init-loader)
(init-loader-load "~/.emacs.d/init-files")
(custom-set-variables  '(init-loader-byte-compile t))

;; inits
(quelpa 'exec-path-from-shell)
(exec-path-from-shell-initialize)

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

(defun other-window-or-split ()
  "画面分割していないと画面分割する。画面分割されてると他の画面に移動する."
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
(global-set-key (kbd "C-t") 'other-window-or-split)

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

(setq inhibit-startup-message t)	; 起動時のスプラッシュページを表示しない
(tool-bar-mode 0)			; ツールバー非表示

(setq backup-inhibited t)		; バックアップファイルを作らない
(setq delete-auto-save-files t)		; AutoSaveファイルを消す

(setq truncate-lines t)			; 行の折り返しをしない

(define-key global-map [ns-drag-file] 'ns-find-file) ; D&Dでファイル開く
(setq ns-pop-up-frames nil)                          ; D&Dで新規フレームを開かない

(defvar ls-lisp-dirs-first t)           ; ディレクトリから先に表示

; 対応するカッコを光らせる
(show-paren-mode 1)

(global-hl-line-mode t)
(set-face-background 'hl-line "#555522")

(setq frame-title-format '("%b"))

; 行数表示
(global-linum-mode t)
(defvar linum-format "%4d")

(column-number-mode t)


(provide 'init)
;;; init.el ends here
