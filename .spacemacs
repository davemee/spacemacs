;; -*- mode: dotspacemacs -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; oy vey https://github.com/syl20bnr/spacemacs/issues/2592 - making tern and emacs work together
(add-to-list 'load-path "/Users/davem/.bin/tern/emacs/")

(autoload 'tern-mode "tern.el" nil t)

;; thanks http://stackoverflow.com/questions/3977069/emacs-question-hash-key/21722619#21722619 , now right-alt-3 gets hashes!
(setq ns-right-alternate-modifier (quote none))

(add-to-list 'custom-theme-load-path "~/.emacs.d")
(load-theme 'Dave t)
(load-theme 'blue-mood t)

;; via http://orgmode.org/worg/org-tutorials/orgtutorial_dto.html

;; via http://ergoemacs.org/emacs/emacs_stop_cursor_enter_prompt.html
;; don't let the cursor go into minibuffer prompt
(setq minibuffer-prompt-properties (quote (read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt)))

;; via http://www.emacswiki.org/emacs/RecentFiles#toc1
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; via http://www.emacswiki.org/emacs/MediaWikiMode
;; via https://github.com/TuxTom/.spacemacs/blob/master/.spacemacs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(ansi-color-faces-default
   [vector default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(ansi-term-color-vector
   [unspecified "#14191f" "#d15120" "#81af34" "#deae3e" "#7e9fc9" "#a878b5" "#7e9fc9" "#dcdddd"] t)
 '(aquamacs-additional-fontsets nil)
 '(aquamacs-customization-version-id 215)
 '(aquamacs-tool-bar-user-customization
   (quote
    ((16777249 new-file open-file recent-files save-buffer aquamacs-print nil undo redo cut copy paste isearch-forward nil customize help)
     (37748974 Set\ for\ current\ session Save\ for\ future\ sessions Undo\ edits Reset\ to\ saved Erase\ customizations Help\ for\ Customize Exit))))
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("eb19745626b1757de95b6ca87b433eb3d7445ecfd6cc5e652d714812706ca844" "a0fdc9976885513b03b000b57ddde04621d94c3a08f3042d1f6e2dbc336d25c7" "3dd00d9de7e6960b5c63b78e2bf6831f4aa0a4c777dc2d941350a5398a9208dc" "4dd1b115bc46c0f998e4526a3b546985ebd35685de09bc4c84297971c822750e" "0ed983facae99849805b2f7be926561cb58474eb18e5296d9bb3ad7f9b088a5b" "a041a61c0387c57bb65150f002862ebcfe41135a3e3425268de24200b82d6ec9" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "0820d191ae80dcadc1802b3499f84c07a09803f2cb90b343678bdb03d225b26b" "b2449984e24368015629ff7a3c9e5108849bff2e34d592c7f480c73ad89351eb" "cd03a600a5f470994ba01dd3d1ff52d5809b59b4a37357fa94ca50a6f7f07473" "bac3f5378bc938e96315059cd0488d6ef7a365bae73dac2ff6698960df90552d" "b85fc9f122202c71b9884c5aff428eb81b99d25d619ee6fde7f3016e08515f07" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "72c7c8b431179cbcfcea4193234be6a0e6916d04c44405fc87905ae16bed422a" "8abee8a14e028101f90a2d314f1b03bed1cde7fd3f1eb945ada6ffc15b1d7d65" "cf205b711e61963020e2d1561e87cdbe7727679b58af25dcabfe5073572b16f0" "34e7163479ef3669943b3b9b1fabe639d6e0a0453e0de79cea2c52cb520d3bc4" "95db78d85e3c0e735da28af774dfa59308db832f84b8a2287586f5b4f21a7a5b" "c1390663960169cd92f58aad44ba3253227d8f715c026438303c09b9fb66cdfb" "868f73b5cf78e72ca2402e1d48675e49cc9a9619c5544af7bf216515d22b58e7" "66132890ee1f884b4f8e901f0c61c5ed078809626a547dbefbb201f900d03fd8" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "e3c90203acbde2cf8016c6ba3f9c5300c97ddc63fcb78d84ca0a144d402eedc6" "e80932ca56b0f109f8545576531d3fc79487ca35a9a9693b62bf30d6d08c9aaf" default)))
 '(default-frame-alist
    (quote
     ((internal-border-width . 0)
      (cursor-type . box)
      (viper-saved-cursor-color-in-replace-mode . "Red3")
      (senator-eldoc-use-color . t)
      (vc-annotate-very-old-color . "#0046FF")
      (fringe)
      (modeline . t)
      (border-color . "#000000000000")
      (fontsize . 0)
      (font-backend ns))))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(emulate-mac-british-keyboard-mode t)
;; '(fci-rule-character-color "#192028")
;; '(fci-rule-color "#383838" t)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(global-vi-tilde-fringe-mode t)
 '(helm-mode t)
;; '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(ido-mode (quote both) nil (ido))
 '(linum-format " %5i ")
 '(magit-diff-use-overlays nil)
 '(make-backup-files t)
 '(menu-bar-mode nil)
 '(ns-antialias-text t)
 '(ns-tool-bar-display-mode (quote both))
 '(ns-tool-bar-size-mode (quote small))
 '(ns-use-qd-smoothing t)
 '(one-buffer-one-frame-mode nil)
 '(org-agenda-files
   (quote
    ("~/Dropbox/Apps/MobileOrg/main.org.txt" "~/Dropbox/Apps/MobileOrg/misc.org.txt" "~/Dropbox/Apps/MobileOrg/work.org.txt" "~/Dropbox/Apps/MobileOrg/t.org.txt")))
 '(paradox-github-token t)
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(rainbow-identifiers-cie-l*a*b*-lightness 80)
 '(rainbow-identifiers-cie-l*a*b*-saturation 18)
 '(ring-bell-function (quote ignore) t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(tabbar-mode t)
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(visual-line-mode nil t)
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(when (not (facep (aref ansi-term-color-vector 0)))))

;; via http://orgmode.org/worg/org-tutorials/org4beginners.html

(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

;; via http://orgmode.org/manual/Setting-up-the-staging-area.html#Setting-up-the-staging-area

;;(add-to-list 'auto-mode-alist '("\\.org.txt\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

;; remove cordova cruft form 
;;(add-to-list 'projectile-globally-ignored-directories "platforms")


;; via http://www.clauswitt.com/a-walkthrough-of-my-spacemacs-configuration-files.html
;;   (setq org-archive-location "~/Dropbox/Apps/MobileOrg/archive.org.txt")
;;;; Set to the name of the file where new notes will be stored
;;(setq org-mobile-inbox-for-pull "~/Dropbox/Apps/MobileOrg/flagged.org")
;;;; Set to <your Dropbox root directory>/MobileOrg.
;;(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
;;;; Command to open marked to preview markdown files
;;   (setq markdown-open-command "/usr/local/bin/mark")

;; Tab settings 
   (setq-default tab-width 2 indent-tabs-mode nil)
   (setq-default c-basic-offset 2 c-default-style "bsd")
   ;; Whitespace settings
   (setq whitespace-action '(auto-cleanup))
   (setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
   ;; Use command key as meta key in os x
   (setq mac-option-key-is-meta nil)
   (setq mac-command-key-is-meta t)
   (setq mac-command-modifier 'meta)
   (setq mac-option-modifier nil)

   ;; Org settings
;;   (setq org-directory "~/Dropbox/Apps/MobileOrg/")
;;   (setq org-agenda-files '("~/Dropbox/Apps/MobileOrg/main.org.txt" "~/Dropbox/Apps/MobileOrg/misc.org.txt" "~/Dropbox/Apps/MobileOrg/work.org.txt" "~/Dropbox/Apps/MobileOrg/t.org.txt"))
   ;; The habit package for org is awesome!
;;   (require 'org-habit)
   ;; Ifttt auto appends .txt to filenames for dropbox append to file action
;;   (add-to-list 'auto-mode-alist '("\\Dropbox/Apps/MobileOrg/.*\.txt\\'" . org-mode))
   ;; Quick searches in org mode
;;    (setq org-agenda-custom-commands
;;            '(("x" agenda)
;;                ("y" agenda*)
;;                ("w" todo "WAITING")
;;                ("W" todo-tree "WAITING")
;;                ("s" todo "STARTED")
;;                ("S" todo-tree "STARTED")
;;                ("c" tags "+COMPUTER")
;;                ("t" tags "+TELEPHONE")
;;                ("o" . "OFFICE tag searches") ; description for "h" prefix
;;                ("oh" tags "+OFFICE+HOME")
;;                ("ol" tags "+OFFICE+LIBRARY")
;;                ("h" . "HOME tag searches") ; description for "h" prefix
;;                ("hc" tags "+HOME+COMPUTER")
;;                ("hp" tags "+HOME+TELEPHONE")
;;            )
;;        )
;;    ; Targets include this file and any file contributing to the agenda - up to 9 levels deep
;;    (setq org-refile-targets (quote ((nil :maxlevel . 9)
;;                                     (org-agenda-files :maxlevel . 9))))

    ; Use full outline paths for refile targets - we file directly with IDO
;;    (setq org-refile-use-outline-path t)

    ; Targets complete directly with IDO
;;    (setq org-outline-path-complete-in-steps nil)

    ; Allow refile to create parent tasks with confirmation
;;    (setq org-refile-allow-creating-parent-nodes (quote confirm))

    ; Use IDO for both buffer and file completion and ido-everywhere to t
;;    (setq org-completion-use-ido t)
;;    (setq ido-everywhere t)
;;    (setq ido-max-directory-size 100000)
;;    (ido-mode (quote both))

    ; Use the current window when visiting files and buffers with ido
    (setq ido-default-file-method 'selected-window)
    (setq ido-default-buffer-method 'selected-window)

    ; Use the current window for indirect buffer display
    (setq org-indirect-buffer-display 'current-window)

;;;; Refile settings
                                        ; Exclude DONE state tasks from refile targets
;;    (defun bh/verify-refile-target ()
;;      "Exclude todo keywords with a done state from refile targets"
;;      (not (member (nth 2 (org-heading-components)) org-done-keywords)))
;;
;;    (setq org-refile-target-verify-function 'bh/verify-refile-target)

;; end via

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; --------------------------------------------------------
     ;; Example of useful layers you may want to use right away
     ;; Uncomment a layer name and press C-c C-c to install it
     ;; --------------------------------------------------------
      osx
      better-defaults
      version-control
      colors
      ibuffer
      emoji
      ;;eyebrowse

      auto-completion
      dash
      go
      html
      javascript
      markdown
      org
      python
      restclient
      syntax-checking
      themes-megapack
      yaml

      spacemacs-completion
      spacemacs-editing
      spacemacs-editing-visual
      spacemacs-language
      spacemacs-layouts
      spacemacs-misc
      spacemacs-org
      spacemacs-ui
      spacemacs-ui-visual

      (git :variables
           git-gutter-use-fringe t)
      ;;mediawiki-mode
;;      evil-magit
;;      evil-mc
;;      helm-command
;;      org-opml
;;      web-mode
     )
   dotspacemacs-additional-packages
   '(
     rainbow-mode
     tern-auto-complete
     ;;acHtmlAngular ; maybe I can make this work one day
                                        ; zeal-at-point
     ; mu4e-maildirs-extension
     ; elfeed
     ; minimap
     ; ocodo-svg-modelines
     ; pdf-tools
     ; ztree
                                        ; centered-window-mode
     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progess in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to a .PNG file.
   ;; If the value is nil then no banner is displayed.
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner 'official
   ;; t if you always want to see the changelog at startup
   dotspacemacs-always-show-changelog t
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects bookmarks)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
                         ;;Dave
   dotspacemacs-themes '(
                         Dave
                         spacemacs-dark
                         spacemacs-light
                         blue-mood
                         leuven
                         monokai
                         zenburn
                         organic-green-theme
                         color-theme-sanityinc-tomorrow)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 12
                               :weight light 
                               :width normal
                               :powerline-scale 1.1
                               )
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil the paste micro-state is enabled. While enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state t
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 100
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 100
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here
  )

(defun dotspacemacs/user-config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."

;;  (define-key window-numbering-keymap "\M-1" nil)
;;  (define-key window-numbering-keymap "\M-2" nil)
  (define-key window-numbering-keymap "\M-3" nil)
;;  (define-key window-numbering-keymap "\M-4" nil)
;;  (define-key window-numbering-keymap "\M-5" nil)
;;  (define-key window-numbering-keymap "\M-6" nil)
;;  (define-key window-numbering-keymap "\M-7" nil)
;;  (define-key window-numbering-keymap "\M-8" nil)
;;  (define-key window-numbering-keymap "\M-9" nil)
  (global-set-key (kbd "M-3") `(lambda () (interactive) (insert "#")))
  (define-key window-numbering-keymap "\M-0" nil)
 )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight normal :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(fringe ((t nil))))

(defun dotspacemacs/config ()
    (setq-default dotspacemacs-configuration-layers '(osx))
    (global-linum-mode) ; Show line numbers by default
    (setq-default dotspacemacs-configuration-layers '(themes-megapack));
    (setq-default dotspacemacs-themes '( Dave spacemacs-dark spacemacs-light leuven monokai zenburn)
                  )
)
(defun evil-toggle-input-method ()
  "when toggle on input method, switch to evil-insert-state if possible.
    when toggle off input method, switch to evil-normal-state if current state is evil-insert-state"
  (interactive)
  (if (not current-input-method)
      (if (not (string= evil-state "insert"))
	  (evil-insert-state))
    (if (string= evil-state "insert")
	(evil-normal-state)
      ))
  (toggle-input-method))

(global-set-key (kbd "C-\\") 'evil-toggle-input-method)

(setq linum-format "%d \u2502 ")

;; via http://www.gnu.org/software/emacs/manual/html_node/dired-x/Omitting-Files-in-Dired.html, http://qerub.se/hiding-hidden-files-in-emacs-dired
(require 'dired-x)
(setq dired-omit-files "^\\...+$")
(add-hook 'dired-mode-hook (lambda () (dired-omit-mode 1)))
;; now C-x M-o hides dotfiles

;; via https://github.com/chrismcg/spacemacs_private/blob/master/dot_spacemacs#L231

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  ;; hopefully, the following culls the platform build trees from Cordova build processes

  (setq-default
   evil-shift-width 2
   standard-indent 2
   js2-basic-offset 2
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2
;;   git-magit-status-fullscreen t
;;   rake-completion-system 'default
   mac-right-option-modifier nil))



(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
;;(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;; js and json indentation - http://spacemacs.org/layers/+lang/javascript/README.html
(setq-default js2-basic-offset 2)
(setq-default js-indent-level 2)

;; tooltips from completion - http://spacemacs.org/layers/auto-completion/README.html
(setq-default dotspacemacs-configuration-layers
              '((auto-completion :variables
                                 auto-completion-enable-help-tooltip t)))

(defun magic-buffer ()
  (interactive)
  (let (( file-name
          (concat temporary-file-directory
                  "magic-buffer.el"))
        ( try-downloading
          (lambda ()
            (url-copy-file
             "https://raw.githubusercontent.com/sabof/magic-buffer/master/magic-buffer.el"
             file-name t)
            (require 'magic-buffer file-name))))
    (condition-case nil
        (funcall try-downloading)
      (error (funcall try-downloading))))
  (magic-buffer))
