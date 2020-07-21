%%
%% This is file 'hhuthesis.cls'
%%
%% Copyright(C) 2020, Wenhan Cao.
%% College of Water Conservancy and Hydropower Engineering, Hohai University.
%%
%% Home Page of the Project:
%% http://github.com/caowenhan/hhuthesis
%%
%% Version:v1.0.0
%% Last update: July 19th,2020.
%% It may be distribute and / or modified under the conditions of the LaTeX Project
%% Public License, either version 1.3c of this license or (at your option) any
%% later version. The latest version of this license is in
%% 
%% http://www.latex-project.org/lppl.txt
%%
%% and version 1.3c or later is part of all distributions of LaTeX version
%% 2008/05/04 or later.
%%

\NeedsTeXFormat{LaTeX2e}[2008/05/04]
\ProvidesClass{hhuthesis}[2020/06/14 v0.0.4 hhuthesis document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\newif\ifhhut@bachelor\hhut@bachelorfalse
\newif\ifhhut@academicmaster\hhut@academicmasterfalse
\newif\ifhhut@professionalmaster\hhut@professionalmasterfalse
\newif\ifhhut@doctor\hhut@doctorfalse
\newif\ifhhut@istwoside\hhut@istwosidefalse
\DeclareOption{twoside}{\hhut@istwosidetrue}
\DeclareOption{bachelor}{\hhut@bachelortrue}
\DeclareOption{academicmaster}{\hhut@academicmastertrue}
\DeclareOption{professionalmaster}{\hhut@professionalmastertrue}
\DeclareOption{doctor}{\hhut@doctortrue}

\ProcessOptions\relax
\ifhhut@istwoside
\LoadClass[zihao=-4,a4paper,twoside,openright,UTF8,space=auto]{ctexbook}
\else
\LoadClass[zihao=-4,a4paper,oneside,openany,UTF8,space=auto]{ctexbook}
\fi

%%
%% the setup of ctex package
%%
\renewcommand{\contentsname}{目录}
\renewcommand{\listfigurename}{插图清单}
\renewcommand{\listtablename}{附表清单}
\def\hhut@label@preface{前言}
\def\hhut@label@abstract{摘要}
\def\hhut@label@keywords{关键词：~}
\def\hhut@label@enabstract{Abstract}
\def\hhut@label@enkeywords{Keywords:~}
\def\hhut@label@acknowledgement{致谢}
\def\hhut@label@resume{附录}
\def\hhut@value@templateversion{v1.0.0}
%% 当前模板的版本
\newcommand{\version}{\hhut@value@templateversion}

%% 国家图书馆封面标题
\def\hhut@label@nlc{国家图书馆封面}
\def\hhut@label@studentnumber{学号:}
\def\hhut@label@classification{分类号:}
\def\hhut@label@securitylevel{密级:}
\def\hhut@label@udc{UDC:}
\def\hhut@label@thesistitle@doctor{博\hspace{1em}士\hspace{1em}学\hspace{1em}位\hspace{1em}论\hspace{1em}文}
\def\hhut@label@thesistitle@academic{硕\hspace{1em}士\hspace{1em}学\hspace{1em}位\hspace{1em}论\hspace{1em}文}
\def\hhut@label@thesistitle@professional{全日制工程硕士专业学位论文}
\def\hhut@label@thesistitle@bachelor{学\hspace{1em}士\hspace{1em}学\hspace{1em}位\hspace{1em}论\hspace{1em}文}
\def\hhut@label@tutor{指导教师姓名:}
\def\hhut@label@professional@tutora{学校指导老师:}
\def\hhut@label@professional@tutorb{基地指导老师:}
\def\hhut@label@degree{申请学位等级:}
\def\hhut@label@major@academic{专业名称:}
\def\hhut@label@major@professional{工程领域:}
\def\hhut@label@submitdate{论文提交日期:}
\def\hhut@label@defenddate{论文答辩日期:}
\def\hhut@label@awarded{学位授予单位和日期:}
\def\hhut@label@chairman{答辩委员会主席:}
\def\hhut@label@reviewer{答辩委员会成员:}

%% 论文中文信息封面标题
\def\hhut@label@cover{中文信息封面}
\def\hhut@label@cover@classification{分类号(中图法)}
\def\hhut@label@cover@udc{UDC(DDC)}
\def\hhut@label@cover@securitylevel{密级}
\def\hhut@label@cover@author{论文作者姓名}
\def\hhut@label@cover@studentnumber{学号}
\def\hhut@label@cover@institute{单位}
\def\hhut@label@cover@zhtitle{论文中文题名}
\def\hhut@label@cover@zhsubtitle{论文中文副题名}
\def\hhut@label@cover@entitle{论文英文题名}
\def\hhut@label@cover@ensubtitle{论文英文副题名}
\def\hhut@label@cover@thesislang{论文语种}
\def\hhut@label@cover@abstractlang{论文摘要语种}
\def\hhut@label@cover@thesispages{论文页数}
\def\hhut@label@cover@numofwords{论文字数}
\def\hhut@label@cover@thesiskeywords{论文关键词}
\def\hhut@label@cover@degree{申请学位级别}
\def\hhut@label@cover@major@academic{专业名称}
\def\hhut@label@cover@major@professional{工程领域}
\def\hhut@label@cover@researchfield{研究方向}
\def\hhut@label@cover@tutor{指导教师姓名}
\def\hhut@label@cover@professional@tutora{学校指导老师}
\def\hhut@label@cover@professional@tutorb{基地指导老师}
\def\hhut@label@cover@tutorinstitute{导师单位}
\def\hhut@label@cover@defenddate{论文答辩日期}

%% 论文英文信息封面标题
\def\hhut@label@encover{英文信息封面}
\def\hhut@label@enstatement{
    Dissertation Submitted to\\
	{\rmfamily \zihao{-3} \textbf{\hhut@value@eninstitute}}\\
	In Fulfillment of The Requirement\\
	for the Degree of\\
	{\rmfamily \zihao{-3} \textbf{\hhut@value@englishdegree}}\\
}
\def\hhut@label@enby{By}
\def\hhut@label@entutor{Supervisor:~~Prof.}

%% 原创性声明内容
\def\hhut@label@declareoriginal{原创性声明}
\def\hhut@label@original{学位论文独创性声明：}
\def\hhut@label@originalcontent{
本人所呈交的学位论文是我个人在导师指导下进行的研究工作及取
得的研究成果。尽我所知，除了文中特别加以标注和致谢的地方外，论文
中不包含其他人已经发表或撰写过的研究成果。与我一同工作的同事对
本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。如
不实，本人负全部责任。
}
\def\hhut@label@authorsign{论文作者（签名）:}
\def\hhut@label@originaldate{签字日期:}
\def\hhut@label@authorization{学位论文使用授权说明：}
\def\hhut@label@authorizationcontent{
河海大学、中国科学技术信息研究所、国家图书馆、中国学术期刊
(光盘版)电子杂志社有权保留本人所送交学位论文的复印件或电子文档，
可以采用影印、缩印或其他复制手段保存论文。本人电子文档的内容和
纸质论文的内容相一致。除在保密期内的保密论文外，允许论文被查阅和
借阅。论文全部或部分内容的公布(包括刊登)授权河海大学研究生院办
理。
}

%% 加载宏包
%% 数学公式&符号
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,mathrsfs}
%% 直立希腊字母字体
\RequirePackage{upgreek}
%% \XeTeX Logo
\RequirePackage{xltxtra}    
\RequirePackage{hologo}
\RequirePackage{etoolbox}   % 给宏包打补丁
\RequirePackage{xparse}     % 用于生成文档级命令的高级接口
\RequirePackage{notoccite}  % 目录引用
\RequirePackage{ifthen}     % 选择编译
\RequirePackage{ifpdf}      % 检查pdfTeX模式
\RequirePackage{fancyhdr}	% 页眉页脚控制
\RequirePackage{ulem}       % 下划线控制
%%
%% 引用geometry宏包设置纸张和页面
%% 设置版面:上2.5cm，下2.5cm，左2.7cm，右2.7cm，
%% 页眉2.3cm，页脚1.8cm，装订线0cm
%%
\usepackage[%geo
paper=a4paper,%
top=2.5cm, % 上2.5cm %
bottom=2.5cm, % 下2.5cm %
left=2.7cm,   % 左2.7cm %
right=2.7cm,  % 右2.7cm %
headheight=0.5cm, % 页眉 2cm %
footskip=0.7cm % 页脚1.8cm %
]{geometry}   % 页面设置 
\RequirePackage{setspace}
\RequirePackage{titletoc}   % 目录格式
%% 复杂插图
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{wrapfig}
\RequirePackage{caption}
\RequirePackage{bicaption}
\RequirePackage{float}   
%% 复杂表格
\RequirePackage{threeparttable}  % 表格尾注
\RequirePackage{longtable}       % 跨页表格
\RequirePackage{dcolumn}
\RequirePackage{array}
\RequirePackage{multirow}        % 跨长的表格单元格
\RequirePackage{multicol}
\RequirePackage{makecell}        % 许多方便的表格控制
\RequirePackage{diagbox}         % 斜线表头
\RequirePackage{booktabs} 
%% sort and compress citations
\RequirePackage[numbers,square,comma,super,sort&compress]{natbib}
\RequirePackage{xcolor}     % 颜色宏包
\RequirePackage{listings}   % 源代码
%% hyperref package
\RequirePackage{hyperref}
\RequirePackage{enumitem}   % 列表宏包
\RequirePackage{wasysym}    % 提供特殊符号
\RequirePackage{pifont}     % 提供带圈数字符号
\RequirePackage{hypernat}   % 解决natbib和hyperref兼容性
\RequirePackage{tabularx}   % 支持扩展的列宽
\RequirePackage{makeidx}    % 支持建立索引
\RequirePackage{glossaries} % 制作术语表
\RequirePackage[version=4]{mhchem}  % 提供化学符号
\RequirePackage{siunitx}

%% 定义几个常用的数学常量符号
%% 定义 对数常数e，虚数符号i,j以及微分算子d为直立体
\newcommand{\me}{\mathrm{e}}
\newcommand{\mi}{\mathrm{i}}
\newcommand{\mj}{\mathrm{j}}
\newcommand{\dif}{\,\mathrm{d}}

\theoremstyle{plain}
\newtheorem{theorem}{定理~}[chapter]
\newtheorem{lemma}[theorem]{引理~}
\newtheorem{corollary}[theorem]{推论~}
\newtheorem{proposition}[theorem]{命题~}
\newtheorem{conjecture}{猜想~}[chapter]

\theoremstyle{definition}
\newtheorem{definition}{定义~}[chapter]
\newtheorem{problem}{问题~}[chapter]
\newtheorem{exmaple}{例~}[chapter]
\newtheorem{exercise}{练习~}[chapter]
\newtheorem{axiom}{公理~}[chapter]
\newtheorem{algorithm}{算法~}[chapter]
\newtheorem{assumption}{假设~}[chapter]

\theoremstyle{remark}
\newtheorem{remark}{注~}
\newtheorem{case}{情形~}
\renewcommand{\proofname}{\bf 证明}

%% 英文字体使用 Times New Roman
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

%% Command -- Clear Double Page
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
	\thispagestyle{empty}%
	\hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%% 设置行距为20磅
\setstretch{1.38}
%% 设置段落间距
\setlength{\parskip}{0pt}    

%% 设置章节标题标号最多到第4层(\subsubsection)，超过第四层的章节不再自动编号
\setcounter{secnumdepth}{4}
%% 设置目录深度最多到第1层
\setcounter{tocdepth}{1}

%% 设置章节格式，黑体三号加粗居中，行距20磅
%% 与正文或节标题的间距设定为段后间距1行
%% 章序号与章名间空一格
\ctexset{chapter={
		name = {第,章},
		number = {\chinese{chapter}},
		format = {\bfseries \rmfamily \centering \zihao{3}},
		pagestyle = {hhut@headings},
		beforeskip= {16bp},
		afterskip = {32bp},
		fixskip = true,
	}
}

%% 设置一级章节标题格式
%% 黑体四号加粗，左对齐，行距20磅
%% 与上一节的间距为1行，与下面正文或节标题的间距为0.5行
%% 序号与题目间空一格
\ctexset{section={
		format={\raggedright \bfseries \rmfamily \zihao{4}},
		beforeskip = {10bp},
		afterskip = {10bp},
		fixskip = true,
	}
}

%% 设置二级章节标题样式
%% 黑体小四号加粗，左对齐，行距20磅
%% 与上一节的间距为1行，与下面正文或节标题的间距为0.5行
%% 序号与题名空一格
\ctexset{subsection={
		format={\raggedright \bfseries \rmfamily \zihao{-4}},
		beforeskip = {10bp},
		afterskip = {10bp},
		fixskip=true,
	}
}

%% 设置三级章节标题样式
%% 黑体小四号加粗，左对齐，行距20磅
%% 与上一节的间距为1行，与下面正文或节标题的间距为0.5行
%% 序号与题名空一格
\ctexset{subsubsection={
		format={\raggedright \bfseries \rmfamily \zihao{-4}},
		beforeskip = {10bp},
		afterskip = {10bp},
		fixskip=true,
	}
}

%% 设定目录格式，目录颜色更换为黑色，并将目录、插图索引、附表索引加入目录中。
\addtocontents{toc}{\protect\hypersetup{hidelinks}}
\addtocontents{lot}{\protect\hypersetup{hidelinks}}
\addtocontents{lof}{\protect\hypersetup{hidelinks}}

%% 设置目录格式
\titlecontents{chapter}[0pt]{\heiti \zihao{4}}
    {\thecontentslabel\hspace{\ccwd}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{section}[2\ccwd]{\songti \zihao{-4}}
    {\thecontentslabel\hspace{\ccwd}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}

\titlecontents{figure}[0pt]{\songti \zihao{-4}}
{\figurename~\thecontentslabel\quad}{\hspace*{-1.5cm}}
{\hspace{.5em}\titlerule*{.}\contentspage}

\titlecontents{table}[0pt]{\songti \zihao{-4}}
{\tablename~\thecontentslabel\quad}{\hspace*{-1.5cm}}
{\hspace{.5em}\titlerule*{.}\contentspage}

%%
%% 空 页眉页脚
\fancypagestyle{hhut@empty}{%
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}}    % get rid of headers and footers

%% 按照河海大学学位论文页面要求设置页眉页脚，学位论文始终是双面打印
%% 偶数页的页眉如下：
%% 上方居中显示“河海大学XX学位论文”
%% 奇数页的页眉如下：
%% 上方居中显示当前章(chapter)的编号和标题
%% 如当前不位于mainmatter中，则上方只显示当前章的标题
%% 无论奇偶页，页眉线为双横线
%% 无论奇偶页，页脚居中显示页码
\fancypagestyle{hhut@headings}{%
	\fancyhf{}
	%% 设置页脚格式
	\fancyfoot[C]{\songti \zihao{-5} \thepage}
	%% 设置页眉格式
    \fancyhead[CE]{ \ifhhut@doctor \zihao{-5} {\songti 河海大学博士学位论文}
                        \else \ifhhut@bachelor \zihao{-5} {\songti 河海大学学士学位论文}
                            \else \zihao{-5} {\songti 河海大学硕士学位论文}\fi\fi}
    \fancyhead[CO]{ \songti \zihao{-5} \leftmark}
}

%% 对于openright选项，必须保证章页右开，且如果前章末页没有内容需清空其页眉页脚
\let\hhut@cleardoublepage\cleardoublepage
\newcommand{\hhut@clearemptydoublepage}{%
	\clearpage{\pagestyle{hhut@empty}\hhut@cleardoublepage}}
\let\cleardoublepage\hhut@clearemptydoublepage

%% 修改frontmatter的页码为大写罗马格式，并调整页面风格
\renewcommand{\frontmatter}{
	\if@openright\cleardoublepage\else\clearpage\fi
	\@mainmatterfalse
	\pagenumbering{Roman}
	\pagestyle{hhut@headings}
}
%% 修改mainmatter的页码为阿拉伯格式
\renewcommand{\mainmatter}{
	\if@openright\cleardoublepage\else\clearpage\fi
	\@mainmattertrue
	\pagenumbering{arabic}
	\pagestyle{hhut@headings}
}

%% 设置浮动体与正文文字之间的距离
\setlength{\floatsep}{6pt}      % 浮动体之间的间距
\setlength{\textfloatsep}{6pt}  % 处于b或t位置的浮动体和文字间距
\setlength{\intextsep}{6pt}     % 处于文字之中h的浮动体和文字间距
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}

%% 将浮动参数设为较宽松的值
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}

%% 设置列表格式
\newcolumntype{d}[1]{D{.}{.}{#1}}% or D{.}{,}{#1} or D{.}{\cdot}{#1}
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}} % 表格内转行

%% 设置图表标题选项，标题字体大小为五号字
\DeclareCaptionLabelSeparator{zhspace}{\hspace{1\ccwd}}
\DeclareCaptionFont{fontsize}{\zihao{5}}
\captionsetup{
	font = {fontsize},
	labelsep = zhspace,
}
\captionsetup[table][bi-second]{name=Table}
\captionsetup[figure][bi-second]{name=Figure}
\captionsetup[table]{
    labelfont = bf,
    textfont = bf,
    position = top,
	aboveskip = {6bp},
	belowskip = {6bp},
}
\numberwithin{table}{section}
\captionsetup[figure]{
    labelfont = bf,
    textfont = bf,
    position = bottom,
	aboveskip = {6bp},
	belowskip = {6bp},
}

%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png,.jpeg,.bmp}
\graphicspath{{figures/}}   % 定义图表默认路径

%% 定义公式、图、表编号的形式“C.S.N”
\renewcommand\theequation{\arabic{chapter}.\arabic{section}.\arabic{equation}}
\renewcommand\thefigure{\arabic{chapter}.\arabic{section}.\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}.\arabic{section}.\arabic{table}}

% 上标引用
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

%% 获取引用文件
\def\hhut@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\hhutfiledate{#1}%
  \def\hhutfileversion{#2}%
  \def\hhutfileinfo{#3}}%
\expandafter\ifx\csname ver@hhuthesis.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_hhuthesis.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@hhuthesis.cls\endcsname}
\fi
\expandafter\hhut@getfileinfo\reserved@a\relax? ? \relax\relax

%% 引用超链接
\hypersetup{
	bookmarksnumbered,%
	linktoc=all,
	colorlinks=true,
	citecolor=black,
	filecolor=black,
	linkcolor=black,
	linkbordercolor=black,
	urlcolor=black,
	plainpages=false,%
	pdfstartview=FitH
}

%% 设置列表缩进符合中文环境
\setenumerate{%
    fullwidth,
    topsep= 0pt,                % 列表顶部与之前内容的额外空白
    itemindent=\parindent,      % 每个item第一行的缩进
    listparindent=\parindent,   % 每一个item第一行之后隔行的缩进
    itemsep=0ex,                % 列表各项之间的额外垂直空白
    partopsep=0pt,              % 如果列表之前是一个空行，列表顶部的额外空白
    parsep=0ex                  % item中，如果分段，段落间的额外空白
}

%% 设置无序列表的标签符号
\setlist[itemize,1]{label=$\medbullet$}
\setlist[itemize,2]{label=$\balcksquare$}
\setlist[itemize,3]{label=$\Diamondblack$}

%% listings 源代码显示
\lstset{tabsize=4,     %
	frame=shadowbox,    % 把代码用带有阴影的框圈起来
	commentstyle=\color{red!50!green!50!blue!50},%浅灰色的注释
	rulesepcolor=\color{red!20!green!20!blue!20},%代码块边框为淡青色
	keywordstyle=\color{blue!90}\bfseries, %代码关键字的颜色为蓝色，粗体
	showstringspaces=false,%不显示代码字符串中间的空格标记
	stringstyle=\ttfamily, % 代码字符串的特殊格式
	keepspaces=true, %
	breakindent=22pt, %
	numbers=left,%左侧显示行号
	stepnumber=1,%
	numberstyle=\tiny, %行号字体用小号
	basicstyle=\footnotesize, %
	showspaces=false, %
	flexiblecolumns=true, %
	breaklines=true, %对过长的代码自动换行
	breakautoindent=true,%
	breakindent=4em, %
	aboveskip=1em, %代码块边框
	fontadjust,
	captionpos=t,
	framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
	xleftmargin=4em,xrightmargin=4em, % 设定listing左右的空白
	texcl=true,
	% 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
	extendedchars=false,columns=flexible,mathescape=true
	numbersep=-1em
}
\renewcommand{\lstlistingname}{代码} % 重命名Listings标题头

%% 定义封面下划线
\def\hhut@underline[#1]#2{%
	\underline{\hbox to #1{\hfill#2\hfill}}}
\def\hhutunderline{\@ifnextchar[\hhut@underline\underline}


%% 国家图书馆封面&论文中文信息封面的可用命令
\newcommand\studentnumber[1]{\def\hhut@value@studentnumber{#1}}
\newcommand\classification[1]{\def\hhut@value@classification{#1}}
\newcommand\securitylevel[1]{\def\hhut@value@securitylevel{#1}}
\newcommand\udc[1]{\def\hhut@value@udc{#1}}
\renewcommand\title[2][\hhut@value@title]{%
    \def\hhut@value@title{#2}
    \def\hhut@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\hhut@value@author{#1}}
\newcommand\tutorinfoa[1]{\def\hhut@value@tutorinfoa{#1}}
\newcommand\tutorinfob[1]{\def\hhut@value@tutorinfob{#1}}
\newcommand\degree[1]{\def\hhut@value@degree{#1}}
\newcommand\major[1]{\def\hhut@value@major{#1}}
\newcommand\submitdate[1]{\def\hhut@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\hhut@value@defenddate{#1}}
\newcommand\awarded[1]{\def\hhut@value@awarded{#1}}
\newcommand\chairman[1]{\def\hhut@value@chairman{#1}}
\newcommand\reviewer[1]{\def\hhut@value@reviewer{#1}}
\newcommand\nlcdate[1]{\def\hhut@value@nlcdate{#1}}
\newcommand\nlclocate[1]{\def\hhut@value@nlclocate{#1}}
\newcommand\institute[1]{\def\hhut@value@institute{#1}}
\newcommand\zhtitle[1]{\def\hhut@value@zhtitle{#1}}
\newcommand\zhsubtitle[1]{\def\hhut@value@zhsubtitle{#1}}
\newcommand\entitlea[1]{\def\hhut@value@entitlea{#1}}
\newcommand\entitleb[1]{\def\hhut@value@entitleb{#1}}
\newcommand\ensubtitle[1]{\def\hhut@value@ensubtitle{#1}}
\newcommand\thesislang[1]{\def\hhut@value@thesislang{#1}}
\newcommand\abstractlang[1]{\def\hhut@value@abstractlang{#1}}
\newcommand\thesispages[1]{\def\hhut@value@thesispages{#1}}
\newcommand\numofwords[1]{\def\hhut@value@numofwords{#1}}
\newcommand\thesiskeywords[1]{\def\hhut@value@thesiskeywords{#1}}
\newcommand\researchfield[1]{\def\hhut@value@researchfield{#1}}
\newcommand\tutor[1]{\def\hhut@value@tutor{#1}}
\newcommand\tutorinstitute[1]{\def\hhut@value@tutorinstitute{#1}}
\newcommand\tutora[1]{\def\hhut@value@tutora{#1}}
\newcommand\tutorainstitute[1]{\def\hhut@value@tutorainstitute{#1}}
\newcommand\tutorb[1]{\def\hhut@value@tutorb{#1}}
\newcommand\tutorbinstitute[1]{\def\hhut@value@tutorbinstitute{#1}}

%% “绘制”hhut国家图书馆封面
\newcommand\makenlctitle[1]{%
    \cleardoublepage
    \thispagestyle{empty}
    \pdfbookmark[0]{\hhut@label@nlc}{nlc}
    {\songti \zihao{4}   
        \vskip 10pt
        \makebox[40pt][r]{\hhut@label@classification}
        \hhutunderline[90pt]{\hhut@value@classification}
        \hfill
        \makebox[40pt][r]{\hhut@label@studentnumber}
        \hhutunderline[90pt]{\hhut@value@studentnumber}
        \vskip 10pt
        \makebox[40pt][r]{\hhut@label@udc}
        \hhutunderline[90pt]{\hhut@value@udc}
        \hfill
        \makebox[40pt][r]{\hhut@label@securitylevel}
        \hhutunderline[90pt]{\hhut@value@securitylevel}
    }
    \vskip 40pt
    \begin{center}
        \includegraphics[height=25mm]{hhuname.png}\\
        \vskip 10pt
        \def\ULthickness{2pt}
        {\ifhhut@doctor \songti \zihao{2} \hhut@label@thesistitle@doctor
        \else \ifhhut@academicmaster \songti \zihao{2} \hhut@label@thesistitle@academic
            \else \ifhhut@professionalmaster \songti \zihao{2} \hhut@label@thesistitle@professional
                \else \songti \zihao{2} \hhut@label@thesistitle@bachelor \fi\fi\fi}% 学位论文
        \begin{spacing}{2.5}
        {\heiti \zihao{1}
        \hhut@value@title
        }
        \end{spacing}
        \vskip 30pt
        {\fangsong \zihao{4} \hhut@value@author}
        \vskip 30pt
    \end{center}
    \begin{spacing}{2.0}
    {\songti \zihao{4}
        \noindent
        {\ifhhut@professionalmaster \hhut@label@professional@tutora
            \else \hhut@label@tutor \fi}%
        \hhutunderline[355pt]{\hhut@value@tutorinfoa}\\
        {\ifhhut@professionalmaster \hhut@label@professional@tutorb \hhutunderline[355pt]{\hhut@value@tutorinfob}
            \else \rightline{\hhutunderline[355pt]{\hhut@value@tutorinfob}}\fi}\\
        \noindent\hhut@label@degree%
        \hhutunderline[120pt]{\hhut@value@degree}%
        \hfill
        {\ifhhut@professionalmaster \hhut@label@major@professional
        \else \hhut@label@major@academic\fi}%
        \hhutunderline[150pt]{\hhut@value@major}\\%
        \noindent\hhut@label@submitdate%
        \hhutunderline[120pt]{\hhut@value@submitdate}
        \hfill
        \hhut@label@defenddate%
        \hhutunderline[120pt]{\hhut@value@defenddate}\\
        \noindent\hhut@label@awarded%
        \hhutunderline[313pt]{\hhut@value@awarded}\\
        \hhut@label@chairman%
        \noindent\hhutunderline[343pt]{\hhut@value@chairman}\\
        \noindent\hhut@label@reviewer%
        \hhutunderline[343pt]{\hhut@value@reviewer}
    }
    \end{spacing}
    \begin{center}
        %\vskip 20pt
        {\songti \zihao{4}
        \hhut@value@nlcdate \hspace{24pt} \hhut@value@nlclocate}
    \end{center}
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}

%% "绘制"论文中文信息封面
\newcommand\makeinfo[1]%
{
    \newpage
    \cleardoublepage
    \thispagestyle{empty}
    \pdfbookmark[0]{\hhut@label@cover}{cover}
    {\songti \zihao{4}
    \noindent\hhut@label@cover@classification%
    \hhutunderline[60pt]{\hhut@value@classification}%
    \hspace{24pt}
    \hhut@label@cover@udc%
    \hhutunderline[60pt]{\hhut@value@udc}%
    \hspace{24pt}
    \hhut@label@cover@securitylevel%
    \hhutunderline[72pt]{\hhut@value@securitylevel}\\
    \vskip 5pt
    \noindent\hhut@label@cover@author%
    \hhutunderline[66pt]{\hhut@value@author}%
    \hspace{18pt}
    \hhut@label@cover@studentnumber%
    \hhutunderline[96pt]{\hhut@value@studentnumber}%
    \hspace{18pt}
    \hhut@label@cover@institute%
    \hhutunderline[96pt]{\hhut@value@institute}\\
    \vskip 5pt
    \noindent\hhut@label@cover@zhtitle%
    \hhutunderline[361pt]{\hhut@value@zhtitle}\\
    \vskip 5pt
    \noindent\hhut@label@cover@zhsubtitle%
    \hhutunderline[345pt]{\hhut@value@zhsubtitle}\\
    \vskip 5pt
    \noindent\hhut@label@cover@entitle%
    \hhutunderline[360pt]{\hhut@value@entitlea}\\
    \rightline{\hhutunderline[360pt]{\hhut@value@entitleb}}\\
    \vskip 5pt
    \noindent\hhut@label@cover@ensubtitle%
    \hhutunderline[345pt]{\hhut@value@ensubtitle}\\
    \vskip 5pt
    \noindent\hhut@label@cover@thesislang%
    \hhutunderline[40pt]{\hhut@value@thesislang}%
    \hhut@label@cover@abstractlang%
    \hhutunderline[70pt]{\hhut@value@abstractlang}%
    \hhut@label@cover@thesispages%
    \hhutunderline[30pt]{\hhut@value@thesispages}%
    \hhut@label@cover@numofwords%
    \hhutunderline[42pt]{\hhut@value@numofwords}\\
    \vskip 5pt
    \noindent\hhut@label@cover@thesiskeywords%
    \hhutunderline[373pt]{\hhut@value@thesiskeywords}\\
    \vskip 5pt
    \noindent\hhut@label@cover@degree%
    \hhutunderline[114pt]{\hhut@value@degree}%
    \hfill
    {\ifhhut@professionalmaster \hhut@label@cover@major@professional
        \else \hhut@label@cover@major@academic\fi}%
    \hhutunderline[144pt]{\hhut@value@major}\\
    \vskip 5pt
    \noindent\hhut@label@cover@researchfield%
    \hhutunderline[387pt]{\hhut@value@researchfield}\\
    \vskip 5pt
    {\ifhhut@professionalmaster
            \noindent\hhut@label@cover@professional@tutora%
            \hhutunderline[120pt]{\hhut@value@tutora}%
            \hfill
            \hhut@label@cover@tutorinstitute%
            \hhutunderline[170pt]{\hhut@value@tutorainstitute}\\
            \vskip 5pt
            \noindent\hhut@label@cover@professional@tutorb%
            \hhutunderline[120pt]{\hhut@value@tutorb}%
            \hfill
            \hhut@label@cover@tutorinstitute%
            \hhutunderline[170pt]{\hhut@value@tutorbinstitute}\\            
        \else
            \noindent\hhut@label@cover@tutor%
            \hhutunderline[120pt]{\hhut@value@tutor}%
            \hfill
            \hhut@label@cover@tutorinstitute%
            \hhutunderline[170pt]{\hhut@value@tutorinstitute}\\
        \fi}
    \vskip 5pt
    \noindent\hhut@label@cover@defenddate%
    \hhutunderline[357pt]{\hhut@value@defenddate}
    }
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}

%% 论文英文信息页可用命令
\newcommand\englishtitle[1]{\def\hhut@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\hhut@value@englishauthor{#1}}
\newcommand\entutor[1]{\def\hhut@value@entutor{#1}}
\newcommand\eninstitute[1]{\def\hhut@value@eninstitute{#1}}
\newcommand\englishdepartment[1]{\def\hhut@value@englishdepartment{#1}}
\newcommand\englishdate[1]{\def\hhut@value@englishdate{#1}}
\newcommand\enlocate[1]{\def\hhut@value@enlocate{#1}}
\newcommand\englishdegree[1]{\def\hhut@value@englishdegree{#1}}

%% “绘制”论文英文信息页
\newcommand\makeeninfo[1]{%
    \cleardoublepage
    \thispagestyle{empty}
    \pdfbookmark[0]{\hhut@label@encover}{encover}
    \begin{center}
        \vskip 20pt
        \begin{spacing}{2.0}
            {\zihao{2} \textbf{\hhut@value@englishtitle}}
        \vskip 60pt
        {\rmfamily\zihao{-3}\hhut@label@enstatement}
        \vskip 60pt
        {\normalfont\rmfamily\zihao{4}\hhut@label@enby}
        \vskip 5pt
        {\rmfamily \zihao{4} \textbf{\hhut@value@englishauthor}}
        \vskip 5pt
        {\rmfamily \zihao{4} \textbf{(\hhut@value@englishdepartment)}}
        \vskip 15pt
        {\normalfont\rmfamily\zihao{4}\hhut@label@entutor
        \rmfamily \zihao{4} \textbf{\hhut@value@entutor}}
        \vskip 60pt
        {\rmfamily \zihao{4} \textbf{\hhut@value@englishdate,\hspace{1em}\hhut@value@enlocate}}
        \end{spacing}
    \end{center}
    \normalfont
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}

%% “绘制”原创性声明
\newcommand\makedeclare{%
    \cleardoublepage
    \pdfbookmark[0]{\hhut@label@declareoriginal}{declareoriginal}
    \thispagestyle{empty}
    \vskip 40pt
    \begin{flushleft}
        {\zihao{4} \textbf{\hhut@label@original}}
    \end{flushleft}
    \vskip 10pt
    \begin{spacing}{2.0}
        {\zihao{4} \textbf{\hhut@label@originalcontent}}
    \end{spacing}
    \vskip 50pt
    {\noindent\zihao{4}\textbf{\hhut@label@authorsign}}% 
    \hhutunderline[100pt]{} %
    \hfill
    {\zihao{4}\textbf{\hhut@label@originaldate}}
    \hhutunderline[100pt]{}
    \vskip 80pt
    \begin{flushleft}
        {\zihao{4} \textbf{\hhut@label@authorization}}
    \end{flushleft}
    \vskip 10pt
    \begin{spacing}{2.0}
        {\zihao{4} \textbf{\hhut@label@authorizationcontent}}
    \end{spacing}
    \vskip 50pt
    {\noindent\zihao{4}\textbf{\hhut@label@authorsign}}%
    \hhutunderline[100pt]{} %
    \hfill
    {\zihao{4}\textbf{\hhut@label@originaldate}}
    \hhutunderline[100pt]{}
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}

%% 下一页从偶数页开始
\newcommand\beginatevenpage{
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi
}

%%
%% 创建各章节部分环境
%%

%% 前言
\newenvironment{preface}
{
    \cleardoublepage
    \chapter{\hhut@label@preface}
}{}

%% 中文摘要
\newenvironment{abstract}
{
    \cleardoublepage
    \chapter{\hhut@label@abstract}
}{}
%% 中文关键词
\newcommand\keywords[1]{%
    \vspace{2ex}\noindent{\textbf{\hhut@label@keywords}} #1}

%% 英文摘要
\newenvironment{enabstract}
{
    \clearpage
    \chapter{\hhut@label@enabstract}
}{}
%% 英文关键词
\newcommand\enkeywords[1]{%
    \vspace{2ex}\noindent{\textbf{\hhut@label@enkeywords}} #1}

%% 目录
\renewcommand\tableofcontents{%
    \if@twocolumn
    \@restonecoltrue\onecolumn
    \else
    \@restonecolfalse
    \fi
    \chapter*{\contentsname}%目录里显示“目录”，否则\chapter*
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \pdfbookmark[0]{目录}{bittoc}
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
}

%% 参考文献
\renewenvironment{thebibliography}[1]
     {\footnotesize
      \chapter*{\bibname}
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \addcontentsline{toc}{chapter}{参考文献}
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \setlength{\parsep}{1mm}
            \setlength{\labelsep}{0.5em}
            \setlength{\itemsep}{0.05pc}
            \setlength{\listparindent}{0in}
            \setlength{\itemindent}{0in}
            \setlength{\rightmargin}{0in}
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}     

%% 致谢
\newenvironment{acknowledgement}
    {\chapter{\hhut@label@acknowledgement}
    \songti
    }{}

%% 主要术语&符号    
\newcommand{\hhut@denotation@name}{主要符号对照表}
\newenvironment{denotation}[1][2.5cm]{
    \chapter{\hhut@denotation@name} % no tocline
    \noindent\begin{list}{}%
    {\vskip-30bp\zihao{-4}
     \renewcommand\makelabel[1]{##1\hfil}
     \setlength{\labelwidth}{#1} % 标签盒子宽度
     \setlength{\labelsep}{0.5cm} % 标签与列表文本距离
     \setlength{\itemindent}{0cm} % 标签缩进量
     \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
     \setlength{\rightmargin}{0cm}
     \setlength{\parsep}{0cm} % 段落间距
     \setlength{\itemsep}{0cm} % 标签间距
    \setlength{\listparindent}{0cm} % 段落缩进量
    \setlength{\topsep}{0pt} % 标签与上文的间距
    }}{\end{list}}    

%% 简历与科研成果页
\newenvironment{resume}{%
    \cleardoublepage
    \chapter{\hhut@label@resume}
    \songti    
}{}

%% 个人简历部分。每条信息一个段落，不需要特别处理
\newcommand{\resumeitem}[1]{%
    \vspace{6bp}{\zihao{4} \heiti \leftline{#1}}\par\vspace{6bp}
}

%% 学术论文、科研项目、所获荣誉用researchitem{<类别>}开启
\newcommand{\researchitem}[1]{%
    \vspace{12bp}{\zihao{4} \heiti \leftline{#1}}\par\vspace{6bp}
}

%% 攻读博士学位期间发表的主要成果用publications罗列
\newlist{publications}{enumerate}{1}
\setlist[publications]{
    label=[\arabic*],
    align=left,
    nosep,
    itemsep=0.05pc,
    leftmargin=8mm,
    labelsep=!,
    resume
}

%% 攻读博士学位期间参与的科研项目用projects罗列
\newlist{projects}{enumerate}{1}
\setlist[projects]{
    label=[\arabic*],
    align=left,
    nosep,
    itemsep=0.05pc,
    leftmargin=8mm,
    labelsep=!,
}

%% 攻读博士学位期间所获的荣誉与奖励用honours罗列
\newlist{honours}{enumerate}{1}
\setlist[honours]{
    label=[\arabic*],
    align=left,
    nosep,
    itemsep=0.05pc,
    leftmargin=8mm,
    labelsep=!,
}

%% 中文破折号
\newcommand{\cndash}{\rule{0.0em}{0pt}\rule[0.35em]{1.4em}{0.05em}\rule{0.2em}{0pt}}

%% hhutspace
\newcommand{\hhutspace}[1][1]{\hspace{#1\ccwd}}

\endinput
%%
%% End of file `hhuthesis.cls'