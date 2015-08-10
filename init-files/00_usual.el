;;; 00_usual.el --- 最低限のものを入れる
;;; Commentary:
;;; Code:

;; スプラッシュ画面とツールバー出さない
(setq inhibit-startup-message t)
(tool-bar-mode 0)

;; バックアップファイルとか
(setq backup-inhibited t)
(setq delete-auto-save-files t)

(provide '00_usual)
;;; 00_usual.el ends here
