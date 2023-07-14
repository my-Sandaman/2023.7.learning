% github:https://github.com/sikouhjw/MathorCupmodeling
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MathorCupmodeling}[2020/01/14 version 1.0]

% 设置纸张为A4纸,行距为1.25倍,设置默认字号为小4
\LoadClass[oneside,a4paper,UTF8,linespread=1.34,zihao=-4]{ctexart}

% 设置章节格式
\ctexset{
    section={
        format={\zihao{4}\heiti\centering},
        name={,、},
        aftername={\hspace{0pt}},
        number=\chinese{section},
    },
    subsection={
        format={\zihao{-4}\heiti\raggedright},
        name={},
        aftername={\hspace{5bp}},
        number={\arabic{section}.\arabic{subsection}},
    },
    subsubsection={
        format={\zihao{-4}\heiti\raggedright},
        name={},
        aftername={\hspace{5bp}},
        number={\arabic{section}.\arabic{subsection}.\arabic{subsubsection}},
    },
    appendix={
        name={附录,：},
        % numbering = false,
        % number=\arabic{section},
    }
}

% \setCJKmainfont[Mapping=fullwidth-stop]{SimSun}
% \setCJKmainfont[]{SimSun}
% \setmainfont{Times New Roman}

\newCJKfontfamily\sonti{SimSun}[BoldFont=FandolSong-Bold]
\setCJKmainfont{SimSun}[BoldFont=FandolSong-Bold]

\def\bianhao#1{\gdef\@bianhao{#1}}
\def\tihao#1{\gdef\@tihao{#1}}
\def\timu#1{\gdef\@timu{#1}}
\def\keyword#1{\gdef\@keyword{#1}}
\renewenvironment{abstract}%
{%
\phantom{1}\\
\rule{\textwidth}{1.5pt}\\
\phantom{1}\\
\phantom{1}\hfill{\zihao{4}\@timu}\hfill\phantom{1}\\
}
{\setcounter{page}{1}
\newpage\thispagestyle{empty}
}


\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}

\RequirePackage[top=2.0cm,bottom=2.0cm,left=2.5cm,right=2.5cm]{geometry}
\RequirePackage{fancyhdr,lastpage}
\RequirePackage[T1]{fontenc}

\pagestyle{fancy}
\fancyhf{}
\renewcommand\headrulewidth{0pt}
\fancyfoot[C]{\thepage{}}
\RequirePackage{titletoc}
\titlecontents{section}[0pt]{\addvspace{2pt}\filright}%
{\heiti\contentspush{\thecontentslabel\ }}%
{}{\titlerule*[8pt]{.}\contentspage}

\RequirePackage{amsmath}
\RequirePackage{amsfonts} 
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\let\lvert\relax\let\rvert\relax\let\lVert\relax\let\rVert\relax
% \RequirePackage{newtxmath}
\RequirePackage{esint}
\DeclareSymbolFont{CMlargesymbols}{OMX}{cmex}{m}{n}
\let\sum\relax\let\prod\relax
\DeclareMathSymbol{\sum}{\mathop}{CMlargesymbols}{"50}
\DeclareMathSymbol{\prod}{\mathop}{CMlargesymbols}{"51}



% 设置虚数,自然底数,微分符号
\def\ee{\mathrm{e}}
\def\ii{\mathrm{i}}
\def\leq{\leqslant}
\def\geq{\geqslant}

% 载入表格宏包和插图宏包
\RequirePackage{booktabs,tabularx,multirow,longtable,makecell,array}
\newcolumntype{Y}{>{\centering\arraybackslash}X}
\RequirePackage{graphicx}
% 设置图片路径
\graphicspath{{figures/}}
\RequirePackage{caption}
\RequirePackage[section]{placeins}
% 扩展的表格宏包和插图宏包
% \RequirePackage{subfig}
% \RequirePackage{longtable}

\captionsetup{format=hang}% 设置浮动体标题悬挂缩进
\DeclareCaptionLabelSeparator*{sspace}{\ \ }
\captionsetup[figure]{labelsep=sspace}
\captionsetup[table]{labelsep=sspace}
\DeclareCaptionFont{heiti}{\heiti}
\DeclareCaptionFont{5hao}{\zihao{5}}
\captionsetup{labelfont={heiti,5hao},textfont={heiti,5hao}}

% 载入颜色宏包
\RequirePackage{color,xcolor}




\RequirePackage{cleveref}% 载入自动引用宏包
\crefname{figure}{图}{图}
\crefname{table}{表}{表}
\crefname{equation}{式}{式}
\renewcommand{\eqref}[1]{\labelcref{#1}~\namecref{#1}}

