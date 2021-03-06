(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(deeper-blue))
 '(custom-safe-themes
   '("aad7fd3672aad03901bf91e338cd530b87efc2162697a6bef79d7f8281fd97e3" "44f5578eccb2cde3b196dfa86a298b75fe39ceff975110c091fa8c874c338b50" "aaf783d4bfae32af3e87102c456fba8a85b79f6e586f9911795ea79055dee3bf" "8e7044bfad5a2e70dfc4671337a4f772ee1b41c5677b8318f17f046faa42b16b" "a11043406c7c4233bfd66498e83600f4109c83420714a2bd0cd131f81cbbacea" "780c67d3b58b524aa485a146ad9e837051918b722fd32fd1b7e50ec36d413e70" "68b847fac07094724e552eeaf96fa4c7e20824ed5f3f225cad871b8609d50ace" "5eb4b22e97ddb2db9ecce7d983fa45eb8367447f151c7e1b033af27820f43760" "1342a81078bdac27f80b86807b19cb27addc1f9e4c6a637a505ae3ba4699f777" "80a23d559a5c5343a0882664733fd2c9e039b4dbf398c70c424c8d6858b39fc5" "a455366c5cdacebd8adaa99d50e37430b0170326e7640a688e9d9ad406e2edfd" "a5a2954608aac5c4dcf9659c07132eaf0da25a8f298498a7eacf97e2adb71765" default))
 '(js-indent-level 2)
 '(package-selected-packages
   '(tide company-quickhelp typescript-mode indent-guide use-package mmm-mode php-mode git-gutter-fringe git-gutter+ beacon nyan-mode dracula-theme smooth-scroll git-gutter swiper bind-key key-chord hydra hiwin minimap rjsx-mode tidal haskell-mode add-node-modules-path flycheck vue-mode neotree company processing-mode js2-mode hamlet-mode yaml-mode scss-mode sass-mode ubuntu-theme helm anything auto-complete ## auto-overlays color-theme-modern web-mode))
 '(tab-width 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(web-mode-comment-face ((t (:foreground "#D9333F"))))
 '(web-mode-css-at-rule-face ((t (:foreground "#FF7F00"))))
 '(web-mode-css-pseudo-class-face ((t (:foreground "#FF7F00"))))
 '(web-mode-css-rule-face ((t (:foreground "#A0D8EF"))))
 '(web-mode-doctype-face ((t (:foreground "#82AE46"))))
 '(web-mode-html-attr-name-face ((t (:foreground "#C97586"))))
 '(web-mode-html-attr-value-face ((t (:foreground "#82AE46"))))
 '(web-mode-html-tag-face ((t (:foreground "#d9b433" :weight bold))))
 '(web-mode-server-comment-face ((t (:foreground "#D9333F")))))

(add-to-list 'load-path "~/.emacs.d/packages");

;; ???????????????????????????
(set-language-environment "Japanese")

;; ??????UTF-8?????????
(prefer-coding-system 'utf-8)

;; ??????????????????????????????????????????
(setq ring-bell-function 'ignore)

;; ????????????????????????????????????????????????????????????
(setq make-backup-files nil)

;;; .#* ??????????????????????????????????????????????????????
(setq auto-save-default nil)

;;; ???????????????????????????????????????????????????
(setq delete-auto-save-files t)

;; ???????????????
(if (version<= "26.0.50" emacs-version)
      (global-display-line-numbers-mode))

;; ???????????????????????????
(tool-bar-mode -1)
(menu-bar-mode -1)

;; ???????????????????????????
(scroll-bar-mode -1)

;; ???????????????????????????????????????
(setq scroll-step 1)

;; ???????????????????????????
;; (setq inhibit-startup-message t)


;; ??????????????????
(setq-default tab-width 2 indent-tabs-mode nil)

;; c-x c-b?????????
(global-set-key "\C-x\C-b" 'buffer-menu)

;; C-x C-c ????????????Emacs??????????????????????????????????????????
(setq confirm-kill-emacs 'y-or-n-p)

;; ??????????????????????????????????????????????????????????????????
(define-key local-function-key-map [?\C-??] [?\C-\\])
(define-key local-function-key-map [?\M-??] [?\M-\\])
(define-key local-function-key-map [?\C-\M-??] [?\C-\M-\\])

;; use-package
;; (eval-when-compile (require 'use-package))
;; ;; (require 'diminish)    ;; if you use :diminish
;; ;; (require 'bind-key)    ;; if you use any :bind variant
;; (setq use-package-verbose t)
;; (setq use-package-minimum-reported-time 0.001)

;; Close all buffers
;; (require 'cl)
;; (defun close-all-buffers ()
;;   (interactive)
;;   (loop for buffer being the buffers
;;      do (kill-buffer buffer)))

;; ????????????
;; mac
(when (equal system-type 'darwin)
  (set-face-attribute 'default nil :family "Monaco" :height 150))

;; windows ???????????????Ricty?????????
(when (equal system-type 'windows-nt)
  (set-face-attribute 'default nil
                      :family "Ricty Diminished"
                      :height 100)
  (setq-default line-spacing 0.2))

;; ubuntu
(when (equal system-type 'gnu/linux)
  (set-fontset-font t 'japanese-jisx0208 "Noto Sans CJK JP")
  (add-to-list 'face-font-rescale-alist '(".*Noto Sans CJK JP.*" . 0.8)))

;; whitespace
(require 'whitespace)
(setq whitespace-style '(face           ; face????????????
                         trailing       ; ??????
                         tabs           ; ??????
                         spaces         ; ????????????
;;                         empty          ; ??????/???????????????
                         space-mark     ; ????????????????????????
                         tab-mark
                         ))
(setq whitespace-space-regexp "\\(\x3000+\\)")
(setq whitespace-display-mappings
      '((space-mark ?\x3000 [?\???])
        (tab-mark   ?\t   [?\xBB ?\t])
        ))

(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])
        ;; WARNING: the mapping below has a problem.
        ;; When a TAB occupies exactly one column, it will display the
        ;; character ?\xBB at that column followed by a TAB which goes to
        ;; the next TAB column.
        ;; If this is a problem for you, please, comment the line below.
        (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

;; ???????????????????????????????????????
(setq whitespace-space-regexp "\\(\u3000+\\)")

(global-whitespace-mode 1)

;; ;; slime
;; (setq inferior-lisp-program "/usr/local/bin/clisp")
;; ;; ~/.emacs.d/slime???load-path?????????
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/slime"))
;; ;; SLIME????????????
;; (require 'slime)
;; (slime-setup '(slime-repl slime-fancy slime-banner))

;; ;; gauche
;; (modify-coding-system-alist 'process "gosh" '(utf-8 . utf-8))
;; (setq scheme-program-name "/usr/local/bin/gosh -i")
;; (autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
;; (autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)

;; (defun scheme-other-window()
;;   "Run scheme on other window"
;;   (interactive)
;;   (switch-to-buffer-other-window
;;    (get-buffer-create "*scheme*"))
;;   (run-scheme scheme-program-name))

;; (define-key global-map
;;   "\C-cs" 'scheme-other-window)



(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

;;=======================================================================
;; ~/.emacs.d/elpa/ ??????????????????
;;=======================================================================
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/"))


;;=======================================================================
;;web-mode
;;=======================================================================
;web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(setq web-mode-engines-alist
'(("php"    . "\\.phtml\\'")
  ("blade"  . "\\.blade\\.")))

;; web-mode??????????????????
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-script-padding 2)

;; (setq web-mode-markup-indent-offset 0)
;; (setq web-mode-css-indent-offset 0)
;; (setq web-mode-code-indent-offset 0)
;; (setq web-mode-script-padding 0)

;; ?????????????????????????????????
(add-hook 'web-mode-hook
          '(lambda ()
             (setq web-mode-enable-auto-indentation nil)))

;; ????????????????????????
;; (set-frame-parameter (selected-frame) 'alpha '(0.95))


;; replace-colorthemes
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/replace-colorthemes"))
;; (load-theme 'charcoal-black t t)
;; (enable-theme 'charcoal-black)
;; (load-theme 'railscast t t)
;; (enable-theme 'railscast)
;; (load-theme 'aalto-dark t t)
;; (enable-theme 'aalto-dark)

;; auto-complete
;; (require 'auto-complete-config)
;; (ac-config-default)


;; helm
;; (require 'helm-config)
;; (helm-mode 1)

;; ?????????????????????
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region)

;; scss-mode
(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

;; ?????????????????????2?????????
;; ?????????????????? compass watch?????????????????????????????????????????????
(defun scss-custom ()
  "scss-mode-hook"
  (and
   (set (make-local-variable 'css-indent-offset) 2)
   (set (make-local-variable 'scss-compile-at-save) nil)
   )
  )
(add-hook 'scss-mode-hook
          '(lambda() (scss-custom)))

;; yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))
(define-key yaml-mode-map "\C-m" 'newline-and-indent)

;; haml-mode
(require 'haml-mode)

;; ruby-mode
(setq ruby-insert-encoding-magic-comment nil)

;; js2-mode
;; (require 'js2-mode)
;; (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; processing
(autoload 'processing-mode "processing-mode" "Processing mode" t)
(add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))

;; processing:ubuntu
(when (equal system-type 'gnu/linux)
  (setq processing-location "~/processing-3.5.4/processing-java")
  (setq processing-application-dir "~/processing-3.5.4")
  (setq processing-sketch-dir "~/sketchbook")
  )

;; company-mode
(require 'company)
(global-company-mode) ; ?????????????????????????????????
(setq company-idle-delay 0) ; ??????????????????0.5
(setq company-minimum-prefix-length 2) ; ??????????????????4
(setq company-selection-wrap-around t) ; ???????????????????????????????????????????????????????????????????????????
(define-key company-active-map (kbd "M-n") nil)
(define-key company-active-map (kbd "M-p") nil)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-h") nil)

;; flycheck
(require 'flycheck)
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint json-jsonlist)))
;; Enable eslint checker for web-mode
(flycheck-add-mode 'javascript-eslint 'web-mode)
;; Enable flycheck globally
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'flycheck-mode-hook 'add-node-modules-path)


;; rjsx-mode
(add-to-list 'auto-mode-alist '(".*\\.js\\'" . rjsx-mode))
(add-hook 'rjsx-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil) ;;????????????????????????????????????????????????
            (setq js-indent-level 2) ;;??????????????????????????????????????????4
            (setq js2-strict-missing-semi-warning nil))) ;;??????????????????????????????????????????

;; git-gutter
(require 'git-gutter)
(global-git-gutter-mode t)

;; js-mode
;; (add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
;; ;; js-mode???????????????
;; (setq js-indent-level 2)

;; org-mode
(setq org-startup-truncated nil)

;; php-mode
;; (require 'php-mode)


;; mmm-mode
;; Vue.js?????????

;; (use-package mmm-mode
;;   :ensure t
;;   :config
;;   (setq mmm-global-mode 'maybe)
;;   (setq mmm-submode-decoration-level 2)
;;   (set-face-background 'mmm-default-submode-face "gray13")

;;   (mmm-add-classes
;;    '((vue-embeded-slim-mode
;;       :submode slim-mode
;;       :front "^<template.*lang=\"pug\">\n"
;;       :back "^</template>")
;;      (vue-embeded-web-mode
;;       :submode web-mode
;;       :front "^<template>\n"
;;       :back "^</template>\n")
;;      (vue-embeded-js-mode
;;       :submode js-mode
;;       :front "^<script>\n"
;;       :back "^</script>")
;;      (vue-embeded-scss-mode
;;       :submode scss-mode
;;       :front "^<style.*lang=\"scss\">\n"
;;       :back "^</style>")))

;;   (mmm-add-mode-ext-class nil "\\.vue\\'" 'vue-embeded-slim-mode)
;;   (mmm-add-mode-ext-class nil "\\.vue\\'" 'vue-embeded-web-mode)
;;   (mmm-add-mode-ext-class nil "\\.vue\\'" 'vue-embeded-js-mode)
;;   (mmm-add-mode-ext-class nil "\\.vue\\'" 'vue-embeded-scss-mode))
;; (setq mmm-js-mode-enter-hook (lambda () (setq syntax-ppss-table nil)))
;; (setq mmm-typescript-mode-enter-hook (lambda () (setq syntax-ppss-table nil)))

;; React?????????



;; neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)  ; F8????????????
(setq neo-autorefresh nil)        ; ???????????????????????????????????????????????????
(setq neo-smart-open t)           ; neotree??????????????????????????????????????????????????????????????????????????????
(setq neo-show-hidden-files t)    ; ?????????????????????????????????????????????

;; indent-guide
(setq indent-guide-delay 0.1)
(setq indent-guide-recursive t)
(add-hook 'prog-mode-hook 'indent-guide-mode)

;; init.el???????????????
(defun find-init-el ()
  "init.el?????????"
  (interactive)
 (find-file "~/.emacs.d/init.el"))

;; helixpico???keymap???????????????
;; (defun helix-pico-keymap ()
;;   (interactive)
;;  (find-file "/Users/eiji/qmk_firmware/keyboards/helix/pico/keymaps/eiji01/keymap.c"))

;; ??????windows???grep-find???????????????????????????
(when (equal system-type 'windows-nt)
  (setq find-program "c:/GnuWin/bin/find.exe")
  (setq grep-program "c:/GnuWin/bin/grep.exe"))

;; nyan-mode
(require 'nyan-mode)
(nyan-mode)
(setq-default nyan-wavy-trail t)
(nyan-start-animation)

;; ???????????????
(with-eval-after-load "calendar"
  (require 'japanese-holidays)
  (setq calendar-holidays ; ???????????????????????????????????????????????????????????????
        (append japanese-holidays holiday-local-holidays holiday-other-holidays))
  (setq calendar-mark-holidays-flag t)	; ?????????????????????????????????
  ;; ????????????????????????????????????????????????????????????????????????????????????????????????
  ;; ??????????????????????????????
  (setq japanese-holiday-weekend '(0 6)	   ; ??????????????????????????????
        japanese-holiday-weekend-marker	   ; ???????????????????????????
        '(holiday nil nil nil nil nil japanese-holiday-saturday))
  (add-hook 'calendar-today-visible-hook 'japanese-holiday-mark-weekend)
  (add-hook 'calendar-today-invisible-hook 'japanese-holiday-mark-weekend)
  (add-hook 'calendar-today-visible-hook 'calendar-mark-today)
  (setq calendar-month-header '(propertize
                                (format "%d??? %s???" year month)
                                'font-lock-face 'calendar-month-header))
  (let ((array ["???" "???" "???" "???" "???" "???" "???"]))
    (setq calendar-day-header-array array
          calendar-day-name-array array))
  (defun my/japanese-holiday-show (&rest _args)
    (let* ((date (calendar-cursor-to-date t))
           (calendar-date-display-form '((format "%s??? %s??? %s??????%s???" year month day dayname)))
           (date-string (calendar-date-string date))
           (holiday-list (calendar-check-holidays date)))
      (when holiday-list
        (message "%s: %s" date-string (mapconcat #'identity holiday-list "; ")))))
  (add-hook 'calendar-move-hook 'my/japanese-holiday-show))
