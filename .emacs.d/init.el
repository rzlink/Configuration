;; Initialize package sources
(require 'cl-lib)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'swiper)
(straight-use-package 'counsel)
(straight-use-package 'company)
(straight-use-package 'which-key)
(straight-use-package 'elpy)
(straight-use-package 'monokai-theme)
(straight-use-package 'zenburn-theme)

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
(elpy-enable)

(require 'org)
(setq org-src-fontify-natively t)

(require 'recentf)
(setq recentf-max-menu-items 25)

;; Quick open the emacs init file
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(setq monokai-background "#1F1F1F")
(load-theme 'monokai t)

;; highlight the parenparence
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(global-hl-line-mode t)

(global-company-mode t)


(require 'which-key)
(setq which-key-idle-delay 10000)
(setq which-key-idle-secondary-delay 0.05)
(which-key-mode)
 
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h o") 'counsel-describe-symbol)
