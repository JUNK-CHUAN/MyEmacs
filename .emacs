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
;;------------���Ի����ַ�������(utf-8)-------------

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
;;����shell-mode����,����û����

;;------���Ի����ַ������ý���------------

;;--------------���ڽ�������------------------

(set-foreground-color "black")
(set-background-color "grey")
(set-cursor-color "purple")
(set-mouse-color "purple")

;;��������
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

;; �����Զ����(�����Զ�����,ע���ʽ,��(top . 0),Բ��ǰ��Ҫ���пո�)
;;(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))

;;(custom-set-variables 'scroll-bar-mode' right)
;; ���ù�����Ĭ�����ұ�

;; ��������һЩ��ɫ,�﷨�ĸ�����ʾ������ͱ���,����ѡ��ı���������,����ѡ��ı���������
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "green")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")

;;------------���ڽ������ý���-----------------

;;--------------���Ʋ���ϰ��-------------------

(setq font-lock-maximum-decoration t)
(setq font-lock-global-modes '(not shell-mode text-mode))
(setq font-lock-verbose t)
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))
;; �﷨������ ����shell-mode �� text-code ֮���ģʽ��ʹ���﷨����

(setq column-number-mode t)
(setq line-number-mode t)
;; ��ʾ���к�

(setq-default auto-fill-function 'do-auto-fill)
;; Autofill in all modes;;
(setq default-fill-column 120)
;; �� fill-column ��Ϊ 60. ���������ָ��ö�

(setq-default indent-tabs-mode nil)
(setq default-tab-width 4);;tab��Ϊ4���ַ����
(setq tab-stop-list ())
;; ���� TAB �ַ���indent, �������ܶ���ֵĴ���. �༭ Makefile ��ʱ��Ҳ���õ���, ��Ϊ makefile-mode ��� TAB �����ó������ TAB �ַ����Ҽ�����ʾ��

(setq sentence-end "\\([������]\\|����\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;; ���� sentence-end ����ʶ�����ı��. ������ fill ʱ�ھ�ź�������ո�

(setq enable-recursive-minibuffers t)
;; ���Եݹ��ʹ�� minibuffer

(setq scroll-margin 5 scroll-conservatively 10000)
;; ��ֹҳ�����ʱ����, scroll-margin 5 �����ڿ�����Ļ����5��ʱ�Ϳ�ʼ���������Ժܺõ��Ķ�������

(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;; ����ȱ��������text, ������auto-fill��ģʽ. �����ǻ���ģʽ fundamental-mode

(show-paren-mode t)
;; ������ƥ��ģʽ

(setq show-paren-style 'parenthesis)
;; ����ƥ��ʱ������ʾ����һ�ߵ�����,����겻��������һ�����Ŵ�

;;-------------���Ʋ���ϰ�߽���----------------
