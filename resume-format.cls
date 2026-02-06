% Resume Class File

%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------
\ProvidesClass{resume-format}
\NeedsTeXFormat{LaTeX2e}

%-------------------------------------------------------------------------------
%                Class options
%-------------------------------------------------------------------------------
% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}

% Inherit options of article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{newtxtext}
\RequirePackage{newtxmath}

% Ensure that generate pdf is machine readable/ATS parsable
\pdfgentounicode=1

%-------------------------------------------------------------------------------
%                3rd party packages
%-------------------------------------------------------------------------------
\RequirePackage{latexsym}
\RequirePackage[empty]{fullpage}
\RequirePackage{titlesec}
\RequirePackage{marvosym}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{verbatim}
\RequirePackage{enumitem} % Handles list environments
\RequirePackage[hidelinks]{hyperref} % Settings for hyperlinks
\RequirePackage{fancyhdr} % Create header and footer
\RequirePackage[english]{babel}
\RequirePackage{tabularx} % Allows tables with automatically varying column widths
\RequirePackage[export]{adjustbox} % Allows for easy resizing of tables or figures to fit page width
\RequirePackage{indentfirst} % Allows first paragraph in new section to have indentation

\input{glyphtounicode}


%-------------------------------------------------------------------------------
%                Configuration for document layout and style
%-------------------------------------------------------------------------------
\pagestyle{fancy}
\fancyhf{} % Clear all header and footer fields
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\setlength{\footskip}{4.4pt}

% Adjust margins
\addtolength{\oddsidemargin}{-0.8in}
\addtolength{\evensidemargin}{-0.8in}
\addtolength{\textwidth}{1.5in}
\addtolength{\topmargin}{-0.5in}
\addtolength{\textheight}{1in}

\urlstyle{same}

\raggedbottom
\raggedright
\newlength{\oldtabcolsep} % Define variable for original table column separation
\setlength{\oldtabcolsep}{\tabcolsep} % Save original table column separation for later use
\setlength{\tabcolsep}{0pt} % Change table column separation to 0pt

% Sections formatting
\titleformat{\section}{
  \vspace{-4pt}\scshape\raggedright\large
}{}{0em}{}[\color{black}\titlerule \vspace{-5pt}]

%-------------------------------------------------------------------------------
%                Configuration for resume entry elements
%-------------------------------------------------------------------------------

% For a single bulleted item, useful for narrative descriptions of experience
\newcommand{\resumeItem}[1]{
  \item{
    {#1 \vspace{-2pt}}
  }
}

% For a volunteer experience or education item (includes location but no supervisor info or hours worked)
\newcommand{\resumeSubheading}[4]{
  \vspace{-2pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & #2 \\
      \textit{#3} & \textit{ #4} \\
    \end{tabular*}\vspace{-7pt}
}


% For a work experience item including supervisor info and hours worked
\newcommand{\resumeSubheadingWork}[6]{
  \vspace{-2pt}\item
    \begin{tabularx}{0.97\textwidth}[t]{l >{\raggedleft\arraybackslash}X} % X means the right column takes up any leftover space from the left up to the defined table width - see tabularx docs for more info
      \textbf{#1} & #2 \\
      \textit{#3} & \textit{ #4} \\
    \end{tabularx}
    \begin{tabularx}{0.97\textwidth}[t]{l >{\raggedleft\arraybackslash}X}
      #5 & #6 \\
    \end{tabularx}\vspace{-7pt}
}


% Optional style for projects
\newcommand{\resumeProjectHeading}[2]{
    \item
    \begin{tabular*}{0.97\textwidth}{l@{\extracolsep{\fill}}r}
      #1 & #2 \\
    \end{tabular*}\vspace{-7pt}
}

\newcommand{\resumeSubItem}[1]{\resumeItem{#1}\vspace{-4pt}}

\renewcommand\labelitemii{$\vcenter{\hbox{\tiny$\bullet$}}$}

% Define list environments start and end
\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[leftmargin=0.15in, label={}]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\resumeItemListStart}{\begin{itemize}}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-5pt}}
