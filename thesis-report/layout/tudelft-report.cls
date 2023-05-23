% BEGIN additions by Gijs 
\usepackage{pifont}
\newcommand{\cmark}{\textcolor{green}{\ding{51}}}%
\newcommand{\xmark}{\textcolor{red}{\ding{55}}}%

\setlength{\tabcolsep}{20pt}
\renewcommand{\arraystretch}{1.5}

\usepackage[table, dvipsnames]{xcolor} 
\usepackage[export]{adjustbox}

\usepackage{mdframed}
% including .svg graphics for figures
\usepackage{svg}

% custom colors for style of the report
\definecolor{myDarkColor}{RGB}{178, 178, 255} % blue!30, #b2b2ff
\definecolor{myLightColor}{RGB}{204, 204, 255} % blue!20, #ccccff 
\definecolor{myEvenLighterColor}{RGB}{231, 231, 255}

\definecolor{my_grey}{RGB}{238,238,228} % #eeeee4

\definecolor{my_purple}{RGB}{183, 141, 242}
\definecolor{my_dark_blue}{RGB}{255, 128, 255}
\definecolor{my_light_blue}{RGB}{96, 219, 232} % skyBlue ##87CEEB
\definecolor{my_green}{RGB}{139, 211, 70} % kiwi #d3e7c1
\definecolor{my_dark_green}{RGB}{38, 120, 19} % #267813

\definecolor{my_yellow}{RGB}{239, 223, 72} % minionYellow #FFD55E 
\definecolor{my_orange}{RGB}{249, 165, 44} % deepSaffron #FF9933
% \definecolor{my_red}{RGB}{214, 78, 18} % sinopia #cb410b 
\definecolor{my_red}{RGB}{255, 90, 30}


\definecolor{ukraine_yellow}{RGB}{254, 241, 0}
\definecolor{ukraine_blue}{RGB}{1, 124, 194}

\usepackage{algpseudocode}
\usepackage{algorithm}
\usepackage{algpseudocode}

% create a macro for \quotes
\newcommand{\quotes}[1]{``#1''}
\newcommand{\bs}{\vspace{\baselineskip}}

% Required package
\usepackage{tikz}
\usetikzlibrary{shapes,arrows,positioning,fit,mindmap,arrows,matrix,calc}

% For minimisation functions
\usepackage{optidef}


% \usepackage{amsmath,scalerel}

\usepackage{amsthm}
\theoremstyle{plain}

\newtheoremstyle{dotless}{}{}{\itshape}{}{\bfseries}{}{ }{}

% custom assumption environment
\theoremstyle{dotless}
\newtheorem{assumption}{}
\newtheorem*{assumption*}{}
\newtheorem{definition}{Definition}

%% to create notes to self
\usepackage{todonotes}
% \usepackage{todonotes}
\let\todox\todo
\setlength{\marginparwidth}{2cm} 
\renewcommand\todo[1]{\todox[inline]{#1}}


% create a capital tau, Tau
\newcommand{\Tau}{\mathrm{T}}

%%%END additions by Gijs %%%%%%%%%%%%%%%%%%%%

% This template aims to simplify and improve the (Xe)LaTeX template
% provided by the TU Delft. Original template by TU Delft. Rewritten
% template by Daan Zwaneveld (https://dzwaneveld.github.io)
%
% This template is available under CC BY-NC 4.0. For more information,
% see https://creativecommons.org/licenses/by-nc/4.0/. No attribution
% is required in reports/theses created using this template.

%% Class is based on the default book class and options will be passed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{layout/tudelft-report}[17-03-2022 v1.5 TU Delft Report Class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[10pt,oneside]{book}

%% Main packages in the document --- Some are imported later in the class file
\RequirePackage{mathtools}  % Mathematical tools to use with amsmath
\RequirePackage{amssymb}    % Extended symbol collection
\RequirePackage{siunitx}    % Comprehensive (SI) units package

\RequirePackage{tabularx}   % Tabulars with adjustable-width columns
\newcommand{\ra}[1]{\renewcommand{\arraystretch}{#1}}

\RequirePackage{booktabs}   % Publication quality tables
\RequirePackage{longtable}  % Allow tables to flow over page boundaries
\RequirePackage{multirow}   % Create tabular cells spanning multiple rows

\RequirePackage{graphicx}   % Enhanced support for images
\RequirePackage{float}      % Improved interface for floating objects
\RequirePackage[labelfont=bf,justification=centering,footnotesize]{caption} % Captions
\RequirePackage{subcaption} % Support for sub-captions
\RequirePackage{pdfpages}   % Include PDF documents

\RequirePackage[pdfusetitle,hidelinks]{hyperref} % Extensive support for hypertext
\RequirePackage[noabbrev,nameinlink]{cleveref} % Intelligent cross-referencing
\RequirePackage{xcolor}     % Driver-independent color extensions
\RequirePackage{tikz} 
% Create PostScript and PDF graphics
\RequirePackage{xspace}     % Define commands that appear not to eat spaces
\RequirePackage{microtype}  % Refinements towards typographical perfection

\RequirePackage{geometry}   % Customize document dimensions
\RequirePackage{titlesec}   % Select alternative section titles
\RequirePackage{titletoc}   % Alternative headings for toc
\RequirePackage{fancyhdr}   % Control of page headers and footers
\RequirePackage{enumitem}   % Control layout of itemize, enumerate, description
\RequirePackage{etoolbox}   % Toolbox of programming facilities
\RequirePackage{iftex}      % Adds if-else statements to support multiple compilers
\RequirePackage{datetime}   % Change format of \today

%% Defining commands for the cover image, subtitle, subject, affiliation and table of authors
\newcommand*\subtitle[1]{\def\@subtitle{#1}}
\newcommand*\subject[1]{\def\@subject{#1}}
\newcommand*\affiliation[1]{\def\@affiliation{#1}}
\newcommand*\coverimage[1]{\def\@coverimage{#1}}
\newcommand*\covertable[1]{\def\@covertable{#1}}

%% Scaling the margins to be slightly smaller than default (.7)
\geometry{a4paper,hscale=0.75,vscale=0.8}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% I. Loading the fonts %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifPDFTeX
    %% pdfLaTeX is available for compatibility and uses a Paletino-like font
    \RequirePackage[T1]{fontenc}  % Selecting T1 font encoding
    \RequirePackage{newpxtext}    % Palatino-like font...
    \RequirePackage{newpxmath}    % ...with support for mathematics

    %% Another font can be used as the large title style font if desired
    \def\largetitlestyle{\normalfont}

    %% Warning when using pdfLaTeX
    \@latex@warning@no@line{You are using pdfLaTeX as the compiler. You can safely ignore this warning or consider changing the compiler to XeLaTeX or LuaLaTeX to adhere to the TU Delft house style.}
\else
    %% If XeLaTeX or LuaLaTeX is set as the compiler, the TU Delft house style fonts are used
    \RequirePackage{fontspec} % Advanced font selection

    %% Adding Arial as the main font and TU Delft Ultralight and Georgia as supplementary fonts
    \setmainfont{Arial}
    \setmathsf{Arial}
    \setmathtt{Arial}

    \newfontfamily\largetitlestyle[Path=layout/tudelft/]{TUDelft-UltraLight.ttf}
    \newfontfamily\quotefont{Georgia}

    %% Changing the quote environment to use Georgia
    \AtBeginEnvironment{quote}{\quotefont}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% II. Adjusting the layout of the titles in the text and table of contents %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Formatting chapter titles and spacing
\titleformat{\chapter}[display]
    {\flushright}
    {\fontsize{96}{96}\selectfont\largetitlestyle\thechapter}
    {0pt}
    {\Huge}
\titlespacing*{\chapter}{0pt}{0pt}{2\baselineskip}

%% Formatting section titles and spacing
\titleformat{\section}
    {\Large\bfseries}
    {\thesection.}
    {5pt}
    {}
\titlespacing*{\section}{0pt}{\baselineskip}{0pt}

%% Formatting subsections titles and spacing
\titleformat{\subsection}
    {\large\bfseries}
    {\thesubsection.}
    {5pt}
    {}
\titlespacing*{\subsection}{0pt}{\baselineskip}{0pt}

%% Formatting subsubsections titles and spacing
\titleformat{\subsubsection}
    {\bfseries}
    {}
    {0pt}
    {}
\titlespacing*{\subsubsection}{0pt}{\bigskipamount}{0pt}

%% Reducing the vertical white space between chapters in the table of contents
\dottedcontents{chapter}[1.5em]{\vspace{0.5\baselineskip}\bfseries}{1.5em}{0pc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% III. Adjusting the header and footer %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Change the header and footer of pages where chapters do not start (depends on twoside option)
\if@twoside
    \fancyhf{}
    \fancyhead[LE,RO]{\thepage}
    \fancyhead[RE]{\nouppercase{\leftmark}}
    \fancyhead[LO]{\nouppercase{\rightmark}}
    \RequirePackage{emptypage} % Remove header and footer on empty pages
\else
    \fancyhf{}
    \fancyhead[R]{\thepage}
    \fancyhead[L]{\nouppercase{\rightmark}}
\fi

\pagestyle{fancy} % Setting the package defaults and the additional changes as the style

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% IV. Creating the cover page %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand*\makecover{
    %% Use the Tikz library positioning and clear the page header and footer
    \usetikzlibrary{positioning}
    \thispagestyle{empty}

    %% Constructing the cover page (cover image, name of university, logo and title text respectively)
    \begin{tikzpicture}[overlay,remember picture]

    \node[above=0,inner sep=0] at (current page.south) {\includegraphics[width=\paperwidth]{\@coverimage}};

    \node[rotate=90,below right=40mm and 3mm] at (current page.west) {\ifdefvoid{\@affiliation}{}{\color{white}\@affiliation}};

    \node[above right=10mm] at (current page.south west) {%
        \includegraphics[width=0.35\linewidth]{layout/tudelft/logo-white.pdf}};

    \node[below=1cm,fill=black!85,minimum width={\paperwidth},inner ysep=25pt,opacity=0.6,text opacity=1] at (current page.north) {%
        \begin{minipage}{0.9\paperwidth}
            \largetitlestyle\fontsize{43}{43}\selectfont\color{title}\@title \\[0.5ex]
            \color{white}\normalfont\fontsize{22}{22}\selectfont%
            \ifdefvoid{\@subtitle}{}{\@subtitle \\[2.5ex]}%
            \ifdefvoid{\@subject}{}{\@subject \\[0.5ex]}
            \largetitlestyle\fontsize{24}{24}\selectfont\ifdefvoid{\@covertable}{\@author}{\@covertable}
        \end{minipage}};

    \end{tikzpicture}
    \newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% V. Setting up listings %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{listings} % Typeset source code listings

\lstset{
  basicstyle=\ttfamily\footnotesize,  % Style of the font that is used for the code
  backgroundcolor=\color{gray!10},    % Background color
  keywordstyle=\color{red!75!black},  % Keyword style
  stringstyle=\color{green!40!black}, % String style
  commentstyle=\color{blue!30!black}, % Comment style
  numbers=left,                       % Add line numbers on the left side
  numbersep=5pt,                      % Decrease distance between line numbers and code
  numberstyle=\tiny,                  % Line number style
  breaklines=true,                    % Line break automatically
}

% to create captions to equations
\DeclareCaptionType{equ}[][]

% tikz flowchart settings
\tikzstyle{decision} = [diamond, draw, fill=myEvenLighterColor, 
text width=4.5em, text badly centered, node distance=2.5cm, inner sep=0pt]
\tikzstyle{block} = [rectangle, draw, 
fill=myLightColor, 
text width=5em, text centered, rounded corners, minimum height=4em]
\tikzstyle{line} = [draw, -latex']
% \tikzstyle{cloud} = [draw, ellipse,fill=red!20, node distance=3cm,

% rounded corners for tikz pictures    
\newcommand*{\ClipSep}{0.5cm}

% diagonal fill of a node
\tikzset{
  diagonal fill/.style 2 args={fill=#2, path picture={
      \fill[#1, sharp corners] (path picture bounding box.south west) -|
  (path picture bounding box.north east) -- cycle;}},
  reversed diagonal fill/.style 2 args={fill=#2, path picture={
      \fill[#1, sharp corners] (path picture bounding box.north west) |- 
  (path picture bounding box.south east) -- cycle;}}
}

\usetikzlibrary{automata, positioning, arrows}

% column type to center horizontally and provide column width
\usepackage{array}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}}


%% for glossary
\usepackage[printonlyused, withpage]{acronym}
\usepackage[symbols,nogroupskip,nonumberlist]{glossaries-extra}
