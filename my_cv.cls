\NeedsTeXFormat{LaTeX2e} %包所用编译器版本
\ProvidesClass{my_cv}[2024/08/20 made by GhostDavid] %包信息
\LoadClass{article} %默认格式，必须有

\RequirePackage{titlesec} %标题样式包
\RequirePackage[utf8]{inputenc} %utf8支持
\RequirePackage{ctex} %中文支持包
\RequirePackage{xeCJK}%中文字体支持包
\RequirePackage{titlesec}%不知道，引用了再说
\RequirePackage{enumitem}%不知道，引用了再说


%页边距
\RequirePackage[      
                a4paper,
                left=0.6in,
                right=0.6in,
                top=0.4in,
                bottom=0.4in,
                nohead
]{geometry}

%以下设置全局字体，中文全为微软雅黑，英文全为times new roman
\setCJKmainfont[Path=fonts/,
               BoldFont=msyhbd.ttc,
               ItalicFont=msyh.ttc
               ]{msyh.ttc}
\setCJKsansfont[Path=fonts/,
               BoldFont=msyhbd.ttc,
               ItalicFont=msyh.ttc
               ]{msyh.ttc}
\setCJKmonofont[Path=fonts/,
               BoldFont=msyhbd.ttc,
               ItalicFont=msyh.ttc
               ]{msyh.ttc}

\setmainfont[Path=fonts/,
               BoldFont=timesbd.ttf,
               ItalicFont=times.ttf
               ]{times.ttf}
\setsansfont[Path=fonts/,
               BoldFont=timesbd.ttf,
               ItalicFont=times.ttf
               ]{times.ttf}
\setmonofont[Path=fonts/,
               BoldFont=timesbd.ttf,
               ItalicFont=times.ttf
               ]{times.ttf}

% 定义 \section 一级标题
\titleformat{\section}                 
{\raggedright\normalsize\bfseries}     %左对齐 字号 粗体
{}{0em}                                %不知道，但必须得有
{}                                     %不知道，但必须得有
[\titlerule]                           %插入横线
\titlespacing*{\section}{0cm}{*1}{*1}  %设置横线后间距

% 定义 \subsection 二级标题
\titleformat{\subsection}              
{\raggedright\normalsize} 
{}{0em}
{}

%定义二级标题增加的备注和日期的格式
\newcommand{\datedsubsection}[5]{%
  \subsection[#1]{\textbf{#1}\quad\textbf{#2}\quad#3\quad#4\hfill #5} %\quad是空格，\textbf是加粗
}

%定义姓名格式
\newcommand{\name}[1]{%
  \centerline{\Large\bfseries{#1}} %\bfseries是加粗
  \vspace{1.2ex} %设置间距
}

%定义联系方式格式
\newcommand\contact[4]{%
    \centerline{\large{#1} \textbar \large{#2} \textbar \large{#3}\textbar \large{#4}} %\textbar是竖线
}

%定义工作内容的列表格式
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0em, leftmargin=1pc}

