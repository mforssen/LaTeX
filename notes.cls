% notes.cls
% LaTeX document class for class notes
%
% Author: May Lynn Forssen
% mforssen@hmc.edu

\ProvidesClass{notes}[11/5/2013]
\NeedsTeXFormat{LaTeX2e}

% LOAD PACKAGES

\RequirePackage{ifpdf}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{boxedminipage}
\RequirePackage{fancyhdr}

\LoadClass{article}

% HEADER AND FOOTER

\fancypagestyle{firstpage}{%
  \fancyhf{}
  \fancyhead[LE,LO]{\@name}
  \fancyhead[CE,CO]{\@subject}
  \fancyhead[RE,RO]{\@date}
  \fancyfoot[CE,CO]{\thepage}
  \renewcommand{\headrulewidth}{0.7pt}
  \renewcommand{\footrulewidth}{0.7pt}
}

\pagestyle{firstpage}

\renewcommand{\footnoterule}{\relax}

% VARIABLES

\global\let\@subject\@empty
\newcommand{\subject}[1]{\def\@subject{#1}}

\global\let\@date\@empty
\renewcommand{\date}[1]{\def\@date{#1}}

\global\let\@name\@empty
\newcommand{\name}[1]{\def\@name{#1}}

% COMMANDS


% ENVIRONMENTS


