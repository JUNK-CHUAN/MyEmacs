(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company)))
 '(save-place nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-hook 'after-init-hook'global-company-mode)
;;------------语言环境字符集设置(utf-8)-------------

(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(setq ansi-color-for-comint-mode t)
;;处理shell-mode乱码,好像没作用

;;------语言环境字符集设置结束------------

;;--------------窗口界面设置------------------

(set-foreground-color "black")
(set-background-color "grey")
(set-cursor-color "purple")
(set-mouse-color "purple")

;;启动设置
(setq default-frame-alist
             '((vertical-scroll-bars)
               (top . 25)
               (left . 200)
               (width . 120)
               (height . 40)
               (background-color . "grey")
               (foreground-color . "black")
               (cursor-color . "purple")
               (mouse-color . "purple")
               (tool-bar-lines . 1)
               (menu-bar-lines . 1)
               (right-fringe)
               (left-fringe)))

;; 启动自动最大化(数据自动调整,注意格式,如(top . 0),圆点前后都要留有空格)
;;(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))

;;(custom-set-variables 'scroll-bar-mode' right)
;; 设置滚动条默认在右边

;; 设置另外一些颜色,语法的高亮显示的主题和背景,区域选择的背景与主题,二次选择的背景和主题
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "green")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")

;;------------窗口界面设置结束-----------------

;;--------------定制操作习惯-------------------

(setq font-lock-maximum-decoration t)
(setq font-lock-global-modes '(not shell-mode text-mode))
(setq font-lock-verbose t)
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))
;; 语法高亮。 除了shell-mode 和 text-code 之外的模式都使用语法高亮

(setq column-number-mode t)
(setq line-number-mode t)
;; 显示行列号

(setq-default auto-fill-function 'do-auto-fill)
;; Autofill in all modes;;
(setq default-fill-column 120)
;; 把 fill-column 设为 60. 这样的文字更好读

(setq-default indent-tabs-mode nil)
(setq default-tab-width 4);;tab键为4个字符宽度
(setq tab-stop-list ())
;; 不用 TAB 字符来indent, 这会引起很多奇怪的错误. 编辑 Makefile 的时候也不用担心, 因为 makefile-mode 会把 TAB 键设置成正真的 TAB 字符并且加亮显示的

(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;; 设置 sentence-end 可以识别中文标点. 不用在 fill 时在句号后插两个空格

(setq enable-recursive-minibuffers t)
;; 可以递归地使用 minibuffer

(setq scroll-margin 5 scroll-conservatively 10000)
;; 防止页面滚动时跳动, scroll-margin 5 可以在靠近屏幕边沿5行时就开始滚动，可以很好地阅读上下文

(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;; 设置缺损主题是text, 并进入auto-fill次模式. 而不是基本模式 fundamental-mode

(show-paren-mode t)
;; 打开括号匹配模式

(setq show-paren-style 'parenthesis)
;; 括号匹配时可以显示另外一边的括号,但光标不会跳到另一个括号处

;;-------------定制操作习惯结束----------------
