;; フォント
(if window-system
    (let ()
      (defvar-local font-name "Ricty")
      (set-face-attribute 'default nil
			  :family font-name
			  :height 135)
      (set-fontset-font (frame-parameter nil 'font)
			'japanese-jisx0208
			(cons font-name "iso10646-1"))
      (set-fontset-font (frame-parameter nil 'font)
			'japanese-jisx0212
			(cons font-name "iso10646-1"))
      (set-fontset-font (frame-parameter nil 'font)
			'katakana-jisx0201
			(cons font-name "iso10646-1"))
      )
  )
