% homework.cls
% LaTeX document class for class notes
%
% Author: May Lynn Forssen
% mforssen@hmc.edu

\ProvidesClass{homework}[11/5/2013]
\NeedsTeXFormat{LaTeX2e}

% OPTIONS

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

% GEOMETRY

\RequirePackage[paper=letterpaper]{geometry}

% LOAD PACKAGES

\RequirePackage{ifpdf}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{framed}
\RequirePackage[usenames,dvipsnames]{color}
\RequirePackage{xcolor}
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
\AtBeginDocument{\thispagestyle{firstpage}}

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
    \begin{framed}
        \par\noindent {\bfseries #1}
    } {%
    \end{framed}
}

\newenvironment{solution}[1][]{% 
    \begin{trivlist}
    \item[]
    } {%
    \end{trivlist}
}

\newenvironment{proof}{% 
    \begin{trivlist}
    \item[]
    } {%
    \mbox{}\hfill $\square$
    \end{trivlist}
}

