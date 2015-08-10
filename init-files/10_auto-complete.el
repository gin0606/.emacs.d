;;; init.el --- auto-complete
;;; Commentary:
;;; Code:


(el-get-bundle auto-complete)
(el-get-bundle pos-tip)

(require 'auto-complete-config)
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

(provide '10_auto-complete)
;;; 10_auto-complete.el ends here
