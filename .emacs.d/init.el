;; init.el --- Emacs configuration
;;; Commentary:
;; Jader Martins config.
;; INSTALL PACKAGES
;; --------------------------------------
(require 'package)
(require 'org)

(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(package-initialize)
;;; Code:
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(
    flycheck
    haskell-mode
    python-mode
    yasnippet
    yasnippet-snippets
    magit
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------

(global-linum-mode 1)
(global-flycheck-mode 1)
(ido-mode 1)
(show-paren-mode 1)
(yas-global-mode 1)
(column-number-mode 1)
(tool-bar-mode -1)

(setq make-backup-files nil)

(global-set-key (kbd "C-x g") 'magit-status)
;; The following lines are always needed.  Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)


(load-theme 'wombat)
(set-face-attribute 'default nil
		    :family "Iosevka Term"
                    :height 100
                    :weight 'normal
                    :width 'normal)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(delete-selection-mode nil)
 '(package-selected-packages
   (quote
    (rust-mode yasnippet-snippets python-mode magit ivy haskell-mode flycheck company)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
;;; init.el ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
