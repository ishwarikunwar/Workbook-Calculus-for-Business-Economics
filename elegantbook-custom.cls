% elegantbook-custom.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{elegantbook-custom}[2025/06/03 Customized ElegantBook class for Business Calculus Workbook]

% --- Pass all options given to this class to elegantbook ---
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{elegantbook}}
\ProcessOptions\relax

% Base: ElegantBook class (options come from main.tex)
\LoadClass{elegantbook}

% Required packages for enhancements
\RequirePackage{amsmath}
\RequirePackage{amssymb} % defines \checkmark
\RequirePackage{tikz}
\RequirePackage{qrcode}

% Avoid option clash: do NOT load tcolorbox with options here.
% ElegantBook already loads it; loading again without options is usually fine.
\RequirePackage{tcolorbox}

% Learning Objectives Environment
\newtcolorbox{learningobjectives}{
  enhanced,
  title=Learning Objectives,
  coltitle=white,
  colback=structurecolor!10,
  colframe=structurecolor,
  colbacktitle=structurecolor,
  fonttitle=\bfseries,
  fontupper=\itshape,
  breakable,
  boxrule=0pt,
  toprule=0.5pt,
  bottomrule=0.5pt,
  sharp corners
}

% Video Link Environment with QR Code (you can place \qrcode{...} inside)
\newenvironment{videolink}[1]{%
  \begin{tcolorbox}[
    colback=blue!5!white,
    colframe=blue!75!black,
    title=Instructional Video: #1,
    fonttitle=\bfseries,
    coltitle=black,
    sharp corners,
    boxrule=0.4pt,
    breakable,
    enhanced,
    before skip=10pt, after skip=10pt
  ]%
  \centering
}{%
  \end{tcolorbox}%
}

% Formula Box Environment
\newtcolorbox{formula}{
  colback=yellow!10,
  colframe=orange!80!black,
  boxrule=0.4pt,
  sharp corners,
  fontupper=\normalsize\ttfamily,
  breakable,
  before skip=10pt,
  after skip=10pt
}

% Try-it Box Icon (for Exercises)
\newcommand{\trybox}{%
  \tikz[baseline]{\node[draw,rounded corners,fill=green!20,anchor=base]{\checkmark\ Try it!};}%
}
