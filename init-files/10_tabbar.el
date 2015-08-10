(el-get-bundle tabbar)

(require 'tabbar)
(tabbar-mode t)
(tabbar-mwheel-mode -1)
(custom-set-variables
 '(tabbar-buffer-groups-function nil)
 )

;; keybind
(global-set-key [f4] 'tabbar-mode)
(global-set-key (kbd "s-}") 'tabbar-forward-tab)
(global-set-key (kbd "s-{") 'tabbar-backward-tab)


(defvar my-tabbar-displayed-buffers
  '("*Colors*" "*Faces*" "*vc-" "*terminal")
  "*Regexps matches buffer names always included tabs.")
(defun my-tabbar-buffer-list ()
  "Return the list of buffers to show in tabs.
Exclude buffers whose name starts with a space or an asterisk.
The current buffer and buffers matches `my-tabbar-displayed-buffers'
are always included."
  (let* ((hides (list ?\  ?\*))
         (re (regexp-opt my-tabbar-displayed-buffers))
         (cur-buf (current-buffer))
         (tabs (delq nil
                     (mapcar (lambda (buf)
                               (let ((name (buffer-name buf)))
                                 (when (or (string-match re name)
                                           (not (memq (aref name 0) hides)))
                                   buf)))
                             (buffer-list)))))
    ;; Always include the current buffer.
    (if (memq cur-buf tabs)
        tabs
      (cons cur-buf tabs))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)

;; face
(set-face-attribute 'tabbar-default nil
		    :family "Ricty"
		    :foreground "black"
		    :background "gray60"
		    :height 0.8)
(set-face-attribute 'tabbar-unselected nil
		    :background "gray85"
		    :foreground "gray30")
(set-face-attribute 'tabbar-selected nil
		    :foreground "black"
		    :background "#f2f2f6")
(set-face-attribute 'tabbar-button nil
		    :box '(:line-width 1 :color "gray72" :style released-button))
(set-face-attribute 'tabbar-separator nil
		    :height 1.2)
