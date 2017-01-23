(deftheme Dave
  "Created 2015-05-19.")

(custom-theme-set-variables
 'Dave
;; '(aquamacs-additional-fontsets nil)
;; '(aquamacs-customization-version-id 215)

;; '(aquamacs-tool-bar-user-customization (quote ((16777249 new-file open-file recent-files save-buffer aquamacs-print nil undo redo cut copy paste isearch-forward nil customize help) (37748974 Set\ for\ current\ session Save\ for\ future\ sessions Undo\ edits Reset\ to\ saved Erase\ customizations Help\ for\ Customize Exit))))
;;  '(default-frame-alist (quote ((internal-border-width . 0) (cursor-type . box) (color-theme-name . color-theme-blue-mood) (top-toolbar-shadow-color . "#e5e5e0e0e1e1") (bottom-toolbar-shadow-color . "#6c6c68686868") (background-toolbar-color . "#bfbfbfbfbfbf") (viper-saved-cursor-color-in-replace-mode . "Red3") (senator-eldoc-use-color . t) (vc-annotate-very-old-color . "#0046FF") (fringe) (modeline . t) (border-color . "#000000000000") (mouse-color . "black") (background-mode . dark) (xyz-tool-bar-lines . 0) (xyz-menu-bar-lines . 1) (xyz-right-fringe . 11) (left-fringe . 10) (cursor-color . "DarkGoldenrod1") (background-color . "DodgerBlue4") (foreground-color . "white smoke") (font . "-apple-Panic_Sans-medium-normal-normal-*-11-*-*-*-m-0-iso10646-1") (fontsize . 0) (font-backend ns))))
;;  '(default-frame-alist (quote ( (color-theme-name . color-theme-blue-mood) (top-toolbar-shadow-color . "#e5e5e0e0e1e1") (bottom-toolbar-shadow-color . "#6c6c68686868") (background-toolbar-color . "#bfbfbfbfbfbf") (viper-saved-cursor-color-in-replace-mode . "Red3") (senator-eldoc-use-color . t) (vc-annotate-very-old-color . "#0046FF")  (modeline . t) (border-color . "#000000000000") (mouse-color . "black") (background-mode . dark) (xyz-tool-bar-lines . 0) (xyz-menu-bar-lines . 1) (xyz-right-fringe . 11) (left-fringe . 10) (cursor-color . "DarkGoldenrod1") (background-color . "DodgerBlue4") (foreground-color . "white smoke") (font . "-apple-Source Code Pro-light-normal-normal-*-11-*-*-*-m-0-iso10646-1") (fontsize . 0) (font-backend ns))))
;; '(helm-mode t)
;; '(ido-mode (quote both))
;; '(make-backup-files t)
;; '(ns-antialias-text t)
;; '(ns-tool-bar-display-mode (quote both))
;; '(ns-tool-bar-size-mode (quote small))
;; '(ns-use-qd-smoothing t)
;; '(scroll-bar-mode nil)
;; '(visual-line-mode nil)
;; '(x-select-enable-clipboard t)
;; '(aquamacs-autoface-mode nil)
 '(display-battery-mode t)
 '(emulate-mac-british-keyboard-mode t)
 '(global-hl-line-mode t)
;; '(global-linum-mode t)
 '(tabbar-mode t)
 ;; '(one-buffer-one-frame-mode nil)
 )

(custom-theme-set-faces
 'Dave
 '(fundamental-mode-default ((t (:inherit autoface-default))))
 '(special-mode-default ((t (:inherit autoface-default))))
 '(messages-buffer-mode-default ((t (:inherit special-mode-default))))

 ;; '(comint-mode-default ((t (:inherit autoface-default :background "#105ea8" :height 130 :family "Inconsolata"))))
  '(comint-mode-default ((t (:inherit autoface-default :background "#105ea8"))))
  ;; '(completion-list-mode-default ((t (:inherit autoface-default :background "#b3b3b3" :foreground "#000000" :height 110 :family "Inconsolata"))))
;;   '(completion-list-mode-default ((t (:inherit autoface-default :background "#b3b3b3" :foreground "#000000"))))
   ;; '(dired-mode-default ((t (:inherit autoface-default :foreground "#d9dcbc" :height 120 :family "Menlo"))))
;;    '(dired-mode-default ((t (:inherit autoface-default :foreground "#d9dcbc" :family "Menlo"))))
    ;; '(eshell-mode-default ((t (:inherit autoface-default :background "#1b2635" :foreground "#ffffff" :height 110 :family "Menlo"))))
     '(eshell-mode-default ((t (:inherit autoface-default :background "#1b2635" :foreground "#ffffff"))))
;; '(fixed-pitch ((t (:family "Akkurat_Mono"))))
     ;; '(help-mode-default ((t (:inherit autoface-default :background "#a2c4e6" :foreground "#09191e" :height 120 :family "Panic Sans"))))
      '(help-mode-default ((t (:inherit autoface-default :background "#a2c4e6" :foreground "#09191e"))))
;; '(package-menu-mode-default ((t (:inherit special-mode-default :height 110 :family "Menlo"))))
      '(package-menu-mode-default ((t (:inherit special-mode-default ))))
      ;;      '(php-mode-default ((t (:inherit c-mode-default :height 120 :family "Akkurat Mono"))))
            '(php-mode-default ((t (:inherit c-mode-default ))))
            ;; '(python-mode-default ((t (:inherit autoface-default :background "#0b3a68" :height 130 :family "Inconsolata"))))
             '(python-mode-default ((t (:inherit autoface-default :background "#0b3a68"))))
;; '(variable-pitch ((t (:family "Akkurat_Light_Pro"))))
             ;; '(default ((t (:inherit nil :stipple nil :background "DodgerBlue4" :foreground "white smoke" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "apple" :family "Panic Sans")))))
              '(default ((t (:inherit nil :stipple nil :background "DodgerBlue4" :foreground "white smoke" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :foundry "apple" :family "Panic Sans" :height 110)))))
(set-face-attribute 'mode-line nil
   :box nil
   :overline nil
   :underline nil)
;;; blue-mood-theme.el --- blue-mood theme

;; Copyright (C) 2002 by Nelson Loyola
;; Copyright (C) 2013 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>
;; URL: https://github.com/emacs-jp/replace-colorthemes
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Port of blue-mood theme from `color-themes'

;;; Code:


(provide-theme 'Dave)
