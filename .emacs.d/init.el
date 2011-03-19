

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(menu-bar-mode -1)
(tool-bar-mode -1)
(setq make-backup-files nil)

(delete-selection-mode 1)

(setq search-highlight t
      query-replace-highlight t)
(fset 'yes-or-no-p 'y-or-n-p)

(setq completion-ignore-case t
      read-file-name-completion-ignore-case t)
;; C-x n {n, w, p, d} {region, widen(whole buffer), page, defun} 
(put 'narrow-to-region 'disabled nil)

(ido-mode t)
(setq ido-enable-flex-matching t
      ido-max-prospects 8
      ido-enable-last-directory-history t)

(setq-default indent-tabs-mode nil)

;; fboundp test the voidness of a symbol's function definition
(when (fboundp 'global-hl-line-mode)
  (global-hl-line-mode t))

(when (fboundp 'show-paren-mode)
  (show-paren-mode t))

;; Save location in file when saving file
(setq save-place-file "~/.emacs.d/.saveplace")
(setq-default save-place t)
(require 'saveplace)

;; Save History (between sessions)
(setq savehist-additional-variables
      '(search ring regexp-search-ring)
      savehist-autosave-interval 60
      savehist-file "~/.emacs.d/.savehist")
(savehist-mode t)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-linum-mode t)