(el-get-bundle helm)
(require 'helm-config)

(helm-mode 1)

(global-set-key (kbd "C-;") 'helm-mini)
