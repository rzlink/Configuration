;; Initialize package sources
(require 'cl-lib)
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)

(defvar my-packages
  '(swiper
    counsel
    company
    which-key
    monokai-theme
    zenburn-theme)
  "A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
  (cl-loop for p in my-packages
           when (not (package-installed-p p)) do (cl-return nil)
           finally (cl-return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (package-refresh-contents)
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

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

(setq monokai-background "#1F1F1F")
(load-theme 'monokai t)

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
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h o") 'counsel-describe-symbol)
