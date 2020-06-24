
;;Package repos and initialization
(setq package-archives '(
			 ("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ))
(package-initialize)

;;Use Package
;;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;Config
;;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (diminish ox-twbs org-bullets htmlize sudo-edit magit company-shell slime-company slime company-jedi company-irony company-c-headers flycheck-clang-analyzer company flycheck yasnippet-snippets yasnippet popup-kill-ring zzz-to-char hungry-delete expand-region rainbow-delimiters rainbow-mode beacon mark-multiple avy helm linum-relative swiper switch-window which-key ivy symon fancy-battery spaceline dashboard projectile dmenu zerodark-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :family "Source Code Pro"))))
 )
