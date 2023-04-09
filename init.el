;; connect to MELPA package server
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(defvar my-packages '(
    ido-completing-read+
    smex
    projectile
    magit
    one-themes
))

(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(load-theme 'one-light t)

;; editor config
(global-display-line-numbers-mode 1)
(setq create-lockfiles nil)
(setq inhibit-startup-message t)
(setq make-backup-files nil)



(set-face-attribute 'default nil
                    :family "JetBrains Mono"
                    :height 160
                    :weight 'normal
                    :width 'normal)

