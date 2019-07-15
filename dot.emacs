

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(define-key global-map "\C-u" 'undo)
(define-key global-map "\C-h" 'delete-backward-char)
(define-key global-map "\M-h" 'help-command)
(define-key global-map "\M-hd" 'describe-function)
(define-key global-map "\C-z" 'scroll-down)
(define-key global-map "\M-g" 'goto-line)
(define-key global-map "\C-x\C-b" 'buffer-menu)

(define-key  minibuffer-local-filename-completion-map
  " " 'minibuffer-complete)
(define-key  minibuffer-local-must-match-filename-map
  " " 'minibuffer-complete)

;; Rust Racer
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)


;; Added by Emacs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(current-language-environment "Japanese")
 '(package-selected-packages (quote (company-lean flycheck-rust company racer)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
