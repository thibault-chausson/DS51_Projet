\ProvidesClass{lib}

\LoadClass[a4paper,12pt]{article}


\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\RequirePackage{graphicx}


%%Insertion programme et support de l'UTF-8 pour le package

\RequirePackage{tcolorbox,listings}
%%\usepackage{fullpage}
\RequirePackage{color}

%Couleur UTBM
\definecolor{UTBMcolor}{RGB}{14,128,200}


%%Pour avoir des lien vers les sections sans encadrement
\RequirePackage[hypertexnames=false, pdftex]{hyperref}
\hypersetup{
    colorlinks=true,
    urlcolor= UTBMcolor,
    linkcolor = black,
    citecolor = black,
    breaklinks=true,
}

%%Algorithique 
\RequirePackage{algcompatible}
\RequirePackage[Algorithme]{algorithm}

\renewcommand{\listalgorithmname}{Liste des algorithmes}


\renewcommand{\algorithmicrequire}{\textbf{Donnée(s) :}}
\renewcommand{\algorithmicensure}{\textbf{Résultat(s) :}}
%\newcommand{\algorithmiccomment}[1]{\{#1\}}
\renewcommand{\algorithmicend}{\textbf{fin}}
\renewcommand{\algorithmicif}{\textbf{si}}
\renewcommand{\algorithmicthen}{\textbf{alors}}
\renewcommand{\algorithmicelse}{\textbf{sinon}}
%\newcommand{\algorithmicelsif}{\algorithmicelse\ \algorithmicif}%je ne sais pas 
%\newcommand{\algorithmicendif}{\algorithmicend\ \algorithmicif} %je ne sais pas 
\renewcommand{\algorithmicfor}{\textbf{pour}}
\renewcommand{\algorithmicforall}{\textbf{pour tout}}
\renewcommand{\algorithmicdo}{\textbf{faire}}
%\newcommand{\algorithmicendfor}{\algorithmicend\ \algorithmicfor} %je ne sais pas 
\renewcommand{\algorithmicwhile}{\textbf{tant que}}


%%Ensemble

\RequirePackage{amssymb}
\RequirePackage{dsfont}
\def\nbR{\ensuremath{\mathrm{I\! R}}}
\DeclareMathAlphabet{\mathdsss}{U}{dsss}{m}{n}



%Pour utiliser \begin{customFrame} et \end{customFrame} et mettre le code brute



\renewcommand{\lstlistingname}{Code source}
\renewcommand{\lstlistlistingname}{Liste des codes sources}

 %Définition des couleurs
\definecolor{darkWhite}{rgb}{0.94,0.94,0.94}

%Pour SPARQL
\lstdefinestyle{frameStyle}{
    backgroundcolor=\color{darkWhite},
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    commentstyle=\color{red},
    deletekeywords={...},
    escapeinside={\%*}{*)},
    extendedchars=true,
    keepspaces=true,
    keywordstyle=\color{blue},
    language=SPARQL,
    morekeywords={VALUES, SERVICE},
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    stepnumber=1,
    stringstyle=\color{gray},
    tabsize=4,
    title=\lstname,
    basicstyle=\footnotesize,
    numbers=left,
    numbersep=20pt,
    numberstyle=\tiny\color{black}
}

\tcbuselibrary{listings,skins,breakable}

\newtcblisting{customFrame}{
    arc=0mm,
    top=0mm,
    bottom=0mm,
    left=3mm,
    right=0mm,
    width=\textwidth,
    listing only,
    listing options={style=frameStyle},
    breakable
}


%Pour Python
\lstdefinestyle{frameStylePython}{
    backgroundcolor=\color{darkWhite},
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    commentstyle=\color{red},
    deletekeywords={...},
    escapeinside={\%*}{*)},
    extendedchars=true,
    keepspaces=true,
    keywordstyle=\color{blue},
    language=PYTHON,
    morekeywords={*,...},
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    stepnumber=1,
    stringstyle=\color{gray},
    tabsize=4,
    title=\lstname,
    basicstyle=\footnotesize,
    numbers=left,
    numbersep=20pt,
    numberstyle=\tiny\color{black}
}

\tcbuselibrary{listings,skins,breakable}

\newtcblisting{customFramePython}{
    arc=0mm,
    top=0mm,
    bottom=0mm,
    left=3mm,
    right=0mm,
    width=\textwidth,
    listing only,
    listing options={style=frameStylePython},
    breakable
}



%Pour XML
 %Définition des couleurs
\definecolor{darkGreen}{rgb}{0,0.5,0}
\definecolor{gray}{rgb}{0.4,0.4,0.4}
\definecolor{darkblue}{rgb}{0.0,0.0,0.6}
\definecolor{cyan}{rgb}{0.0,0.6,0.6}


\lstdefinelanguage{XML}
{
  morestring=[b]",
  morestring=[s]{>}{<},
  morecomment=[s]{<?}{?>},
  stringstyle=\color{black},
  identifierstyle=\color{darkblue},
  keywordstyle=\color{cyan},
  morekeywords={xmlns,version,type,about,datatype, ressource}% list your attributes here
}


\lstdefinestyle{frameStyleXML}{
    backgroundcolor=\color{darkWhite},
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    commentstyle=\color{red},
    deletekeywords={...},
    escapeinside={\%*}{*)},
    extendedchars=true,
    keepspaces=true,
    language=XML,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    stepnumber=1,
    tabsize=4,
    title=\lstname,
    basicstyle=\footnotesize,
    numbers=left,
    numbersep=20pt,
    numberstyle=\tiny\color{black}
}

\tcbuselibrary{listings,skins,breakable}

\newtcblisting{customFrameXML}{
    arc=0mm,
    top=0mm,
    bottom=0mm,
    left=3mm,
    right=0mm,
    width=\textwidth,
    listing only,
    listing options={style=frameStyleXML},
    breakable
}

\lstset{
    literate=
        {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
        {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
        {à}{{\`a}}1 {è}{{\`e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ù}{{\`u}}1
        {À}{{\`A}}1 {È}{{\'E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ù}{{\`U}}1
        {ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
        {Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
        {â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
        {Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1
        {œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ß}{{\ss}}1
        {ű}{{\H{u}}}1 {Ű}{{\H{U}}}1 {ő}{{\H{o}}}1 {Ő}{{\H{O}}}1
        {ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1 {å}{{\r a}}1 {Å}{{\r A}}1
        {€}{{\EUR}}1 {£}{{\pounds}}1
}

%%Image
%\includegraphics[scale=0.4]{Méthode des trapèzes.pdf}

%%Code
%\lstinputlisting[language=C, firstline=1, lastline=39]{Integrale.c}


%%Entête

\RequirePackage{lmodern}
\RequirePackage{exscale}




% définir un nouveau style de page sans numéro de page
\fancypagestyle{no_number}{%
  \fancyhf{}% effacer tous les en-têtes et pieds de page actuels
  \renewcommand{\headrulewidth}{1pt}

\renewcommand{\headrule}{{\color{UTBMcolor}%
\hrule width\headwidth height\headrulewidth \vskip-\headrulewidth}}

\fancyhead[C]{\TITRE}
\fancyhead[L]{\NOM}
\fancyhead[R]{\UVXX}
}

% définir un nouveau style de page sans numéro de page
\fancypagestyle{number}{%
\cfoot{\thepage}
  \renewcommand{\headrulewidth}{1pt}

\renewcommand{\headrule}{{\color{UTBMcolor}%
\hrule width\headwidth height\headrulewidth \vskip-\headrulewidth}}

\fancyhead[C]{\TITRE}
\fancyhead[L]{\NOM}
\fancyhead[R]{\UVXX}
}


%%O ou o

\newcommand{\bigO}[1]{\ensuremath{\mathop{}\mathopen{}O\mathopen{}\left(#1\right)}}
\newcommand{\smallO}[1]{\ensuremath{\mathop{}\mathopen{}o\mathopen{}\left(#1\right)}}


\addto\captionsfrench{%
    \renewcommand{\listfigurename}{Table des images}%
    \renewcommand{\listtablename}{Table des tableaux}%
}





\setlength{\parindent}{0cm}
\setlength{\parskip}{1ex plus 0.5ex minus 0.2ex}
\newcommand{\hsp}{\hspace{20pt}}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\setlength{\parindent}{0.7cm}


%Couleur cellule tableau

\RequirePackage{colortbl}

%Tableur sur plusieurs pages
\RequirePackage{array,multirow,makecell}
\newcolumntype{M}[1]{>{\smallskip}m{#1}}
\newcolumntype{C}[1]{>{\smallskip\centering}m{#1}}
\RequirePackage{supertabular}

%Pour le captionof

\RequirePackage{caption}

\captionsetup[figure]{name={Image}}

%Pour renommer table en tableau
\captionsetup[table]{name=Tableau}

%Padding autour tableau

\newenvironment{paddingTab}{% code à effectuer avant
    \centering \bigskip
    }
    {%code à effectuer après
    \bigskip
}

%Équations

\RequirePackage{amsmath}

%euro

\RequirePackage{eurosym}

%le gloassaire
\RequirePackage{glossaries}
%Pour mettre en gras les termes du glossaire
\renewcommand*{\glstextformat}{\textcolor{UTBMcolor}}




%%%% algorigramme %%%%
\usepackage{tikz}
\usetikzlibrary{positioning}
\usepackage{varwidth}

\usetikzlibrary{shapes,arrows,positioning,calc}

% Define block styles
\tikzstyle{decision} = [
    diamond, draw,
    fill=gray!20,
    text width=5em,
    text badly centered,
    node distance=0.5cm,
    minimum height=1em,
    inner sep=0pt]
\tikzstyle{block} = [
    rectangle, draw,
    fill=white!20,
    text width=12em,
    text centered,
    rounded corners,
    minimum height=1em]
\tikzstyle{api} = [
    rectangle, draw,
    fill=pink!20,
    text width=12em,
    text centered,
    rounded corners,
    minimum height=1em]
\tikzstyle{prompt} = [
    rectangle, draw,
    fill=orange!20,
    text width=12em,
    text centered,
    rounded corners,
    minimum height=1em]
\tikzstyle{line} = [draw, -latex']
\tikzstyle{cloud} = [
    draw, ellipse,
    fill=red!20,
    node distance=4cm,
    minimum height=2em]
\tikzstyle{sortie} = [
    draw, ellipse,
    fill=green!20,
    node distance=1.5cm,
    minimum height=2em]


%%%% fin algorigramme %%%%



%%%% changer la marge %%%%
\newenvironment{changemargin}[2]{\begin{list}{}{%
\setlength{\topsep}{0pt}%
\setlength{\leftmargin}{0pt}%
\setlength{\rightmargin}{0pt}%
\setlength{\listparindent}{\parindent}%
\setlength{\itemindent}{\parindent}%
\setlength{\parsep}{0pt plus 1pt}%
\addtolength{\leftmargin}{#1}%
\addtolength{\rightmargin}{#2}%
}\item }{\end{list}}
%%%% fin changer la marge %%%%