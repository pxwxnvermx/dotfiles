(tool-bar-mode     -1)    ;; Remove toolbar
(scroll-bar-mode   -1)    ;; Remove scollbars
(menu-bar-mode     -1)    ;; Remove menu bar
(blink-cursor-mode 0)     ;; Solid cursor, not blinking

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

(custom-set-variables
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("01a9797244146bbae39b18ef37e6f2ca5bebded90d9fe3a2f342a9e863aaa4fd"
     default))
 '(package-selected-packages '(## evil gruber-darker-theme)))
(custom-set-faces
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#181818" :foreground "#e4e4ef" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 110 :width normal :foundry "NONE" :family "ComicShannsMono Nerd Font Mono")))))

(require 'package)
(setq package-archives
	  '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
		("MELPA"        . "https://melpa.org/packages/")
		("ORG"          . "https://orgmode.org/elpa/")
		("MELPA Stable" . "https://stable.melpa.org/packages/")
		("nongnu"       . "https://elpa.nongnu.org/nongnu/"))
	  package-archive-priorities
	  '(("GNU ELPA"     . 20)
		("MELPA"        . 15)
		("ORG"          . 10)
		("MELPA Stable" . 5)
		("nongnu"       . 0)))

(package-initialize)
(package-refresh-contents)

;;; Download Evil
;(unless (package-installed-p 'evil)
;  (package-install 'evil))
;
;;; Enable Evil
;(require 'evil)
;(evil-mode 1)
