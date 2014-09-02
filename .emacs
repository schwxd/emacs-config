;; .emacs
;(load-file "~/.emacs.d/unicad.el")
;(require 'unicad)
;(load-file "~/.emacs.d/xml-rpc.el")
;(load-file "~/.emacs.d/weblogger.el")
;; Load CEDET;; Load CEDET;; Load CEDET
;(load-file "~/.emacs.d/yasnippet.el")
;(require 'yasnippet)
;(yas/initialize)
;(yas/load-directory "~/.emacs.d/snippets")

;; Don't display menu bar. Type M-x menu-bar-mode to display it
(menu-bar-mode '-1)
;; Don't display tool bar. Type M-x tool-bar-mode to display it
(if (not (equal (getenv "HOSTTYPE") "sparc"))
    (tool-bar-mode '-1))

(defun linux-c-mode ()
	"C mode with adjusted defaults for use with the Linux kernel."
	(interactive)
	(c-mode)
	(c-set-style "K&R")
	(setq tab-width 8)
;	(setq indent-tabs-mode t)
	(setq c-basic-offset 8)
)

(defun	my-c-mode ()
	"C mode with adjusted defaults for use with the C sources."
	(interactive)
	(c-mode)
	(c-set-style "K&R")
	(setq tab-width 8)
;	(setq indent-tabs-mode t)
	(setq c-basic-offset 8)
)

(defun	my-c++-mode ()
	"C++ mode with adjusted defaults for use with the C++ sources."
	(interactive)
	(c++-mode)
	(c-set-style "K&R")
	(setq tab-width 8)
;	(setq indent-tabs-mode t)
	(setq c-basic-offset 8)
)

(defun	my-asm-mode ()
	"ASM mode with adjusted defaults for use with the asm sources."
	(interactive)
	(asm-mode)
	(setq tab-width 8)
;	(setq indent-tabs-mode t)
	(setq c-basic-offset 8)
)

(setq auto-mode-alist (cons '(".*\\.\\(inl$\\|cxx$\\|hxx$\\|cpp$\\|hpp$\\)" .
			my-c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '(".*\\.\\(inc$\\|[Ss]$\\)" .
			my-asm-mode) auto-mode-alist))
(setq auto-mode-alist (cons '(".*\\.\\(inl$\\|c$\\|h$\\)" .
			my-c-mode) auto-mode-alist))
(setq auto-mode-alist (cons '(".*/*linux.*/+.*\\.[ch]$" .
			linux-c-mode) auto-mode-alist))

(setq witch-function-mode t)
(which-func-mode)

;; This maps edit keys to standard Windows keystokes. It requires the
;; library cua-mode.el from Kim Storm at the following URL:
(load "~/.emacs.d/cua-mode.el")
(CUA-mode t)

;; Set foreground and background. black or dimgrey may be choosed
(set-foreground-color "white")
(set-background-color "Gray")

;(set-background-color "CornflowerBlue")
;(set-background-color "DarkSlateBlue")
;(set-background-color "MidnightBlue")
;(set-background-color "Black")

;; Set the mouse and cursor color
(set-mouse-color "white")
(set-cursor-color "red")

(setq Man-overstrike-face 'info-node)
(setq Man-underline-face 'info-xref)

;(eshell)
;(rename-buffer "hw-shell")
;(eshell)
;(rename-buffer "fw-shell")
(shell)
(rename-buffer "xboot-shell")
(shell)
(rename-buffer "android-shell")
(shell)
(rename-buffer "dddd-shell")
(shell)
(rename-buffer "out-shell")
(shell)
(rename-buffer "driver-shell")
(shell)
(rename-buffer "linux-shell")
(shell)
(rename-buffer "kernel-shell")
(shell)
(rename-buffer "hw-shell")
(shell)
(rename-buffer "system-shell")
(shell)
(rename-buffer "svn-shell")
(shell)
(rename-buffer "src-shell")
(shell)
(rename-buffer "make-shell")
(shell)
(rename-buffer "work-shell")

(show-paren-mode)
(global-auto-revert-mode)

;;; uncomment this line to disable loading of "default.el" at startup
;;(setq inhibit-default-init t)

;; turn on font-lock mode
;;(when (fboundp 'global-font-lock-mode)
;;  (global-font-lock-mode t))

;; enable visual feedback on selections
(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" system-name))

(add-hook 'comint-output-filter-functions
	'comint-watch-for-password-prompt)

(setq display-time-24hr-format t)
(setq display-time-day-and-date nil)
(display-time)

(column-number-mode t)

(setq make-backup-files nil)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "red4" "green4" "yellow4" "blue4" "magenta4" "cyan4" "white"])
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-tip-of-the-day nil)
 '(next-line-add-newlines nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(transient-mark-mode t)
 '(weblogger-config-alist (quote (("default" "http://www.iguoshao.com/xmlrpc.php" "admin" "" "1") ("emacs" "http://www.iguoshao.com/xmlrpc.php" "admin" "" "1")))))

(setq ps-font-size 8)
(defun my-ps-print-buffer()
	(interactive)
	(message "  print ... ")
	(setq filename "~/tmp/1.ps")
	(ps-print-buffer-with-faces filename))

(global-set-key "\M-\C-p" 'my-ps-print-buffer)
(global-set-key "\C-j" 'goto-line)










(setq auto-mode-alist (cons '(".*\\.\\(inl$\\|cxx$\\|hxx$\\|cpp$\\|hpp$\\)" .
			my-c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '(".*\\.\\(inc$\\|[Ss]$\\)" .
			my-asm-mode) auto-mode-alist))
(setq auto-mode-alist (cons '(".*\\.\\(inl$\\|c$\\|h$\\)" .
			my-c-mode) auto-mode-alist))
(setq auto-mode-alist (cons '(".*/*linux.*/+.*\\.[ch]$" .
			linux-c-mode) auto-mode-alist))

;; Load CEDET
;(load-file "~/.emacs.d/cedet/common/cedet.el")

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
;;(semantic-load-enable-code-helpers)
;(semantic-load-enable-excessive-code-helpers)

;(global-ede-mode t)
;(require 'semantic-ia)
;(require 'semantic-gcc)
;(global-srecode-minor-mode 1)


;;;; 使函数体能够折叠或展开

;; Enable source code folding

;(global-semantic-tag-folding-mode 1)

 

;; Key bindings

;(defun my-cedet-hook ()

;  (local-set-key [(control return)] 'semantic-ia-complete-symbol)

;  (local-set-key "M-?" 'semantic-ia-complete-symbol-menu)

;  (local-set-key "M-d" 'semantic-ia-fast-jump)

;  (local-set-key "M-r" 'semantic-symref-symbol)

;  (local-set-key "M-R" 'semantic-symref))

;(add-hook 'c-mode-common-hook 'my-cedet-hook)

 

;;;; 当输入"."或">"时，在另一个窗口中列出结构体或类的成员

;(defun my-c-mode-cedet-hook ()

 ;(local-set-key "." 'semantic-complete-self-insert)

; (local-set-key ">" 'semantic-complete-self-insert))

;(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)


;; * This enables even more coding tools such as the nascent intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-guady-code-helpers)

;; * This turns on which-func support (Plus all other code helpers)
;; (semantic-load-enable-excessive-code-helpers)

;; This turns on modes that aid in grammar writing and semantic tool
;; development.  It does not enable any other features such as code
;; helpers above.
;; (semantic-load-enable-semantic-debugging-helpers)

;(add-to-list 'load-path "~/.emacs.d/ecb-2.40")
;(require 'ecb-autoloads)

;;;; 各窗口间切换

;(global-set-key [M-left] 'windmove-left)

;(global-set-key [M-right] 'windmove-right)

;(global-set-key [M-up] 'windmove-up)

;(global-set-key [M-down] 'windmove-down) 

 

;;;; 隐藏和显示ecb窗口

(define-key global-map [(f1)] 'ecb-hide-ecb-windows)

(define-key global-map [(f2)] 'ecb-show-ecb-windows)

;;;; 使某一ecb窗口最大化

(define-key global-map "\C-c1" 'ecb-maximize-window-directories)

(define-key global-map "\C-c2" 'ecb-maximize-window-sources)

(define-key global-map "\C-c3" 'ecb-maximize-window-methods)

(define-key global-map "\C-c4" 'ecb-maximize-window-history)

;;;; 恢复原始窗口布局
;; color theme


(define-key global-map "\C-c`" 'ecb-restore-default-window-sizes)


(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d")
(require 'auto-complete)
(global-auto-complete-mode t)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(setq ac-auto-start 3)
(define-key ac-complete-mode-map "\t" 'ac-complete)
(define-key ac-complete-mode-map "\r" nil)

;;;use y/n
(fset 'yes-or-no-p 'y-or-n-p)

;;; don't show the startup window
(setq inhibit-startup-message t)

;; Interactively Dothings
(require 'ido)
(ido-mode t)

    ;; **all about buffer switching** ;;
;; ibs.el, use C-tab to switch buffers
;;(require 'ibs)
;;(require 'pc-bufsw)

(require 'buffer-stack-suppl)
(setq buffer-stack-show-position 'buffer-stack-show-position-buffers)

(autoload 'buffer-stack-down "buffer-stack"  nil t)
(autoload 'buffer-stack-up "buffer-stack"  nil t)
(autoload 'buffer-stack-bury-and-kill "buffer-stack"  nil t)
(autoload 'buffer-stack-bury "buffer-stack"  nil t)
(eval-after-load "buffer-stack" '(require 'buffer-stack-suppl))

(global-set-key [(f10)] 'buffer-stack-bury)
(global-set-key [(control f10)] 'buffer-stack-bury-and-kill)
(global-set-key [(f9)] 'buffer-stack-down)
(global-set-key [(f10)] 'buffer-stack-up)
(global-set-key [(shift f10)] 'buffer-stack-bury-thru-all)
(global-set-key [(shift f9)] 'buffer-stack-down-thru-all)
(global-set-key [(shift f11)] 'buffer-stack-up-thru-all)

;; finished buffer switching

;; change the color theme
(add-to-list 'load-path "/home/xdwang/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-gray30)
;;(my-color-theme)

;;(set-default-font "fontset-courier")

;;set font size
(create-fontset-from-fontset-spec
 (concat
  "-*-courier-medium-r-normal-*-28-*-*-*-*-*-fontset-courier"))
;;  "-*-courier-medium-r-normal-*-18-*-*-*-*-*-fontset-courier"))
;;  "chinese-gb2312:-*-simsun-medium-r-*-*-18-*-*-*-c-*-gb2312*-*,"
;;  "mule-unicode-0100-24ff:-*-simsun-medium-r-*-*-18-*-*-*-c-*-iso10646*-*,"
;;  "korean-ksc5601:-*-*-medium-r-*-*-18-*-*-*-*-*-ksc5601*-*,"
;;  "chinese-cns11643-5:-*-simsun-medium-r-*-*-18-*-*-*-c-*-gbk*-*,"
;;  "chinese-cns11643-6:-*-simsun-medium-r-*-*-18-*-*-*-c-*-gbk*-*,"
;;  "chinese-cns11643-7:-*-simsun-medium-r-*-*-18-*-*-*-c-*-gbk*-*,"
;;  "sjis:-*-medium-r-normal--18-*-jisx0208*-*"))

;;(set-default-font "fontset-courier")
;;(set-frame-font "fontset-courier")
;;(set-frame-font "-WenQuanYi-WenQuanYi Bitmap Song-normal-normal-normal-*-20-*-*-*-*-*-iso10646-1")
(set-frame-font "-unknown-WenQuanYi Micro Hei Mono-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1")

(require 'tabbar)
(tabbar-mode)

(global-set-key [(control prior)] 'tabbar-backward-group)
(global-set-key [(control next)] 'tabbar-forward-group)
(global-set-key [(control tab)] 'tabbar-forward)
(global-set-key (kbd "C-1") 'tabbar-forward)
(global-set-key (kbd "C-`") 'tabbar-backward) 


;; Common MSWIN like keys
(global-set-key "\C-o" 'find-file)

;; fix shell-mode color
(ansi-color-for-comint-mode-on)
