(setq make-backup-files nil)
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("marmalade" .
	             "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	                  '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(require 'rvm)
(rvm-use-default) 
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(setq ruby-deep-indent-paren nil)
(global-set-key (kbd "C-c r r") 'inf-ruby)
(global-set-key (kbd "C-c r a") 'rvm-activate-corresponding-ruby)
(ac-config-default)
(projectile-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'after-init-hook 'global-company-mode)
(global-company-mode t)
(push 'company-robe company-backends)
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

