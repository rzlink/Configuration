;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
   (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(avy counsel swiper monokai-theme company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(global-linum-mode t)       ; show line number
(menu-bar-mode -1)          ; Disable the menu bar
(delete-selection-mode t)

(setq make-backup-files nil); disable the backup file
;; Set Up the visible bell
(setq visible-bell t)

(require 'org)
(setq org-src-fontify-natively t)

(require 'recentf)
(setq recentf-max-menu-items 25)

;; Quick open the emacs init file
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(load-theme 'monokai t)
;;(setq monokai-background "#1F1F1F")
(set-background-color "#1B1D1F")

;; highlight the parenparence
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(global-hl-line-mode t)

(global-company-mode t)
 
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "c-h f") 'counsel-describe-function)
(global-set-key (kbd "c-h v") 'counsel-describe-variable)
(global-set-key (kbd "c-h o") 'counsel-describe-symbol)
