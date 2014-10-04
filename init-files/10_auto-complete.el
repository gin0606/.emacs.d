;;; 10_auto-complete.el --- auto-completeの設定を書く
;;; Commentary:
;;; Code:
(quelpa 'auto-complete)
(quelpa 'pos-tip)			; helpを表示するやつの改善版みたいなやつ
(require 'auto-complete)
(require 'auto-complete-config)
(require 'pos-tip)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(custom-set-variables
 '(ac-modes (append ac-modes
		    ;; ac-modesにに設定されてなくてauto-complete-mode有効にしたいmode指定する
		    ))
 '(ac-auto-start t)
 '(ac-set-trigger-key nil)
 '(ac-use-menu-map t)
 '(ac-menu-height 20)
 '(ac-ignore-case 'smart)
 '(ac-auto-show-menu t)
 '(ac-use-fuzzy t)
 '(ac-dwim t)
 '(global-auto-complete-mode t)
 )

;; (custom-set-variables
;;  '(ac-modes (append ac-modes
;; 		    '(c++-mode)
;; 		    ))
;;  '(ac-auto-start t)
;;  '(ac-auto-show-menu t)
;;  '(ac-candidate-limit nil)
;;  '(ac-menu-height 20)
;;  '(ac-ignore-case 'smart)
;;  '(ac-use-fuzzy t)
;;  '(ac-dwim t)
;;  )

;; (setq ac-use-menu-map t)
;; (define-key ac-menu-map "\C-n" 'ac-next)
;; (define-key ac-menu-map "\C-p" 'ac-previous)


(provide '10_auto-complete)
;;; 10_auto-complete.el ends here
