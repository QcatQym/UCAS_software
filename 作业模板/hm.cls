%---------------------------------------------------------%
%                                                         %
%              COPYRIGHT--Cheng Quanzhong                 %
%               run On TeXLive--xeLaTeX                   %
%    WECHAT WeChat official account: UCAS_SOFEWARE        %
%                                                         %
%---------------------------------------------------------%

%加载引用
\ProvidesClass{hm}[CQZ NO.1]
\LoadClass[hyperref,12pt,a4paper,onecolumn]{ctexart}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath}
\RequirePackage{mathtools}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\setmainfont{Times New Roman}
\RequirePackage[left=1.5cm, right=1.5cm, top=2.00cm, bottom=2.50cm]{geometry}

%页脚
\pagestyle{fancy}
\fancyhf{}
\rfoot{\footnotesize Page-\thepage}
\renewcommand{\headrulewidth}{0pt}

%一些常数
\hypersetup{colorlinks=true}
\linespread{1.5}
\setlength{\parindent}{2em}

%定义变量
\newsavebox{\hn}
\newcommand{\workname}[1]{\sbox{\hn}{\zihao{2}{\textbf{#1}}}}
\newsavebox{\nm}
\newcommand{\name}[1]{\sbox{\nm}{\zihao{3}{{#1}}}}
\newsavebox{\xh}
\newcommand{\xuehao}[1]{\sbox{\xh}{\zihao{3}{{#1}}}}

%定义计数器
\newcounter{qsn}
\setcounter{qsn}{0}
\newcommand{\qs}[1]{ \stepcounter{qsn}  \par\addvspace{1em}\noindent\textbf{\large  \theqsn.  #1}\par\addvspace{1em}}
\newcounter{qsnn}[qsn]
\setcounter{qsnn}{0}
\newcommand{\qss}[1]{\stepcounter{qsnn} \noindent{\large  \theqsn-\theqsnn \quad#1}}

%改写方程编号
\numberwithin{equation}{qsn}
\renewcommand{\theequation}{\theqsn-\arabic{equation}}

%初始化
\AtBeginDocument{{\,}
	\begin{center}\includegraphics[width=0.7\linewidth]{ucas_logo.pdf}\\
	\vspace{\fill}
	\usebox{\hn}\\
	\vspace{\fill}
	\usebox{\nm}\\
	\usebox{\xh}\\
	\vspace{\fill}
	{\today}
	\thispagestyle{empty}
	\newpage
	\end{center}}



	
	


