;; 対応するカッコを光らせる
(show-paren-mode 1)

;; 現在行highlight
(global-hl-line-mode t)

;; 行数表示
(global-linum-mode t)
(defvar linum-format "%4d")

(column-number-mode t)

;; 画面サイズ
(custom-set-variables '(initial-frame-alist
			(quote (
				(fullscreen . maximized)
				))))
(custom-set-variables '(default-frame-alist initial-frame-alist))

(el-get-bundle 'powerline)
(powerline-default-theme)

(add-to-list 'load-path "~/.emacs.d/themes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'tomorrow-night-eighties t)
