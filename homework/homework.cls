% homework.cls
% LaTeX document class for class notes
%
% Author: May Lynn Forssen
% mforssen@hmc.edu

\ProvidesClass{homework}[11/5/2013]
\NeedsTeXFormat{LaTeX2e}

\RequirePackage{ifpdf}

% DECLARE OPTIONS

\newif\ifhomework@title % different title on front page

\DeclareOption{notitle}{%
    \homework@titlefalse%
}

\DeclareOption{title}{%
    \homework@titletrue%
}

\newif\ifhomework@boxed % if the problem statements are boxed or not

\DeclareOption{boxed}{%
    \homework@boxedtrue%
}

\DeclareOption{unboxed}{%
    \homework@boxedfalse%
}

\newif\ifhomework@slabel % if the solutions are labeled

\DeclareOption{slabel}{%
    \homework@slabeltrue%
}

\DeclareOption{noslabel}{%
    \homework@slabelfalse%
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

% EXECUTE OPTIONS

\ExecuteOptions{title,boxed,noslabel}
\ProcessOptions

% GEOMETRY

\RequirePackage[paper=letterpaper]{geometry}

% LOAD PACKAGES

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{framed}
\RequirePackage{etoolbox}
\RequirePackage{paralist}

\LoadClass{article}

% HEADER AND FOOTER

\fancypagestyle{firstpage}{%
  \fancyhf{}
  \fancyfoot[CE,CO]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0.7pt}
}

\fancypagestyle{followingpage}{%
  \fancyhf{}
  \fancyhead[LE,LO]{\@name}
  \fancyhead[CE,CO]{\@assignment}
  \fancyhead[RE,RO]{\@date}
  \fancyfoot[CE,CO]{\thepage}
  \patchcmd{\headrule}{\hrule}{\hrule}{}{}
  \patchcmd{\footrule}{\hrule}{\hrule}{}{}
  \renewcommand{\headrulewidth}{0.7pt}
  \renewcommand{\footrulewidth}{0.7pt}
}



\pagestyle{followingpage}

\ifhomework@title
    \AtBeginDocument{\thispagestyle{firstpage}}
\fi

\renewcommand{\footnoterule}{\relax}

% VARIABLES

\global\let\@subject\@empty
\newcommand{\assignment}[1]{\def\@assignment{#1}}

\global\let\@date\@empty
\renewcommand{\date}[1]{\def\@date{#1}}

\global\let\@name\@empty
\newcommand{\name}[1]{\def\@name{#1}}

\global\let\@name\@empty
\newcommand{\course}[1]{\def\@course{#1}}

% COMMANDS

\renewcommand\maketitle{%
  \begin{center}
    {\large\sc \@name} \\
    \@course\\
    \@assignment \\
    \ifx\@date\@empty
      \relax
    \else
      {\it\small \@date} \\
    \fi
  \end{center}
  \normalsize
}

% ENVIRONMENTS

\newenvironment{problem}[1][]{% 
    \ifhomework@boxed \begin{framed}\fi%
        \par\noindent {\bfseries #1}
        } {%
    \ifhomework@boxed\end{framed}\fi%
}

\newenvironment{solution}{% 
    \ifhomework@slabel \begin{trivlist}
        \item[] 
        {\bfseries Solution:}
        \fi
        \begin{trivlist}
            \item[]
            } {%
        \end{trivlist}
    \ifhomework@slabel \end{trivlist} \fi
}

\newenvironment{proof}{% 
    \begin{trivlist}
        \item[]
        } {%
        \mbox{}\penalty10000 \hfill $\square$
    \end{trivlist}
}

