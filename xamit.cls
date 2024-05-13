% Style file for JAMIT2024, or later
%
% This code bases on an unofficial old-JAMIT-Journal style file (LaTeX), which was stored in Mori Lab at Nagoya University.
% A developer of the old-JAMIT-Journal style file is unkwnon, unfortunately.
%
% H. Itoh, May, 2024

\ProvidesClass{samit}

\newcommand{\@ptsize}{0}
\DeclareOption{oneside}{\@twosidefalse}
\DeclareOption{twoside}{\@twosidetrue}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{openbib}{\@openbibtrue}
\DeclareOption{9bp}{\renewcommand{\@ptsize}{-1}}
\DeclareOption{10bp}{\renewcommand{\@ptsize}{0}}
\DeclareOption{11bp}{\renewcommand{\@ptsize}{1}}
\DeclareOption{12bp}{\renewcommand{\@ptsize}{2}}
\ProcessOptions
%\input{jsize1\@ptsize.clo}

%%%%%%%%%%%%%%%%%%%

\newif\if@restonecol
\newif\if@openbib
\@openbibfalse

\def\parsearg#1{%
  \let\next = #1%
  \begingroup
    \obeylines
    \futurelet\temp\parseargx
}

\def\parseargx{%
  \ifx\obeyedspace\temp
    \expandafter\parseargdiscardspace
  \else
    \expandafter\parseargline
  \fi
}

{\obeyspaces %
 \gdef\parseargdiscardspace {\futurelet\temp\parseargx}}

{\obeylines %
  \gdef\parseargline#1{%
    \endgroup
    \argremovec#1\relax %
    \expandafter\argremovecomment \the\toks0 \comment\relax %
    \expandafter\next\expandafter{\the\toks0}%
  }%
}

\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand{\baselinestretch}{}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

%%%%%%%%%%
% %
%%%%%%%%%%
\skip\@mpfootins = \skip\footins
\renewcommand{\theequation}{\arabic{equation}}
\newcommand{\@pnumwidth}{1.55em}
\newcommand{\@tocrmarg}{2.55em}
\newcommand{\@dotsep}{4.5}
\newdimen\toclineskip
\newdimen\@lnumwidth
\def\numberline#1{\hbox to\@lnumwidth{#1\hfil}}

\newcommand{\newblock}{}

\long\def\@makefntext#1{\parindent 1em%
  \noindent\hbox to 1.8em{\hss\@makefnmark}#1}


\renewcommand{\normalsize}{%
    \@setfontsize\normalsize\@xpt{9}%
  \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
  \abovedisplayshortskip \z@ \@plus3\p@
  \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\setbox0\hbox{\char\euc"A1A1}%
\setlength\Cht{\ht0}
\setlength\Cdp{\dp0}
\setlength\Cwd{\wd0}
\setlength\Cvs{\baselineskip}
\setlength\Chs{\wd0}
\newcommand{\small}{%
  \@setfontsize\small\@ixpt{11}%
  \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus2\p@
  \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \topsep 4\p@ \@plus2\p@ \@minus2\p@
              \parsep 2\p@ \@plus\p@ \@minus\p@
              \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\newcommand{\footnotesize}{%
  \@setfontsize\footnotesize\@viiipt{9.5}%
  \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus\p@
  \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \topsep 3\p@ \@plus\p@ \@minus\p@
              \parsep 2\p@ \@plus\p@ \@minus\p@
              \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\newcommand{\scriptsize}{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand{\tiny}{\@setfontsize\tiny\@vpt\@vipt}
\newcommand{\large}{\@setfontsize\large\@xiipt{17}}
\newcommand{\Large}{\@setfontsize\Large\@xivpt{21}}
\newcommand{\LARGE}{\@setfontsize\LARGE\@xviipt{24}}
%\newcommand{\LARGE}{\@setfontsize\LARGE\@xviipt{25}}
\newcommand{\huge}{\@setfontsize\huge\@xxpt{28}}
\newcommand{\Huge}{\@setfontsize\Huge\@xxvpt{33}}
\setlength\headheight{12\p@}
\setlength\headsep{25\p@}
\setlength\topskip{1\Cht}
\setlength\footskip{30\p@}

%%% set parameters for margins
\setlength{\paperheight}{297mm}
\setlength{\paperwidth}{210mm}
\setlength{\textheight}{233mm} % 297 - topmargin(25) - bottommargin(47-52)
\setlength{\textwidth}{184.6mm}  % 210 - ???E??]?? margin(20-25)
\setlength{\topmargin}{23.5mm} %original 35
\addtolength{\topmargin}{-1in}
\setlength{\headsep}{0mm}
\setlength{\headheight}{0mm}
\setlength{\oddsidemargin}{12.7mm}
\addtolength{\oddsidemargin}{-1.0in}
\setlength{\evensidemargin}{12.7mm}
\addtolength{\evensidemargin}{-1.0in}
\setlength{\columnsep}{10mm}
%-------------- above set by H. itoh --------------
\setlength{\parindent}{1zw}
\setlength{\parskip}{1\p@}
\setlength{\partopsep}{4\p@}
\setlength{\tabcolsep}{6\p@}
\setlength{\arraycolsep}{5\p@}
\setlength{\arrayrulewidth}{.4\p@}
\setlength{\doublerulesep}{2\p@}
\setlength{\tabbingsep}{\labelsep}
\setlength{\labelsep}{.5em}
\setlength{\labelwidth}{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\setlength{\fboxsep}{3\p@}
\setlength{\fboxrule}{.4\p@}
\setlength{\lineskip}{1\p@}
\setlength{\normallineskip}{1\p@}
\setlength{\toclineskip}{\z@}

\setlength{\marginparwidth}{0mm}
\setlength{\marginparsep}{0mm}
\setlength{\marginparpush}{0mm}


\raggedbottom

\@ifundefined{@twoc}{%
{\ifcase \@ptsize
    % mods for 10 pt
    \textheight43\baselineskip
    \textwidth47zw
\or % mods for 11 pt 
    \textheight42\baselineskip
    \textwidth43zw
\or % mods for 12 pt
    \textheight39\baselineskip
    \textwidth40zw
\fi}
%\advance\textheight\topskip
\def\@ps@{1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\abstractname}{\fontsize{9bp}{12bp}{\bfseries \textgt{要旨：}}}
\newcommand{\keywordsname}{{\bf キーワード：}}
\newcommand{\refname}{\fontsize{9bp}{13.35bp}{\bf 文献}}
\let\l@table\l@figure

%
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \iftdir\sbox\@tempboxa{#1~~#2}%
%  \iftdir\sbox\@tempboxa{#1\hskip1zw#2}%
    \else\sbox\@tempboxa{#1~~#2}%
  \fi
  \ifdim \wd\@tempboxa >\hsize
    \iftdir #1\hskip1zw#2\relax\par
      \else #1~#2\relax\par\fi
  \else
    \global \@minipagefalse
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{3\p@}
\setlength\belowcaptionskip{0\p@}

%
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\newcommand{\thefigure}{\bf\@arabic\c@figure}
\def\fnum@figure{\baselineskip 1.2em {\bf \figurename~\thefigure}}
%\def\fnum@figure{\small \baselineskip 10bp {\bf \figurename}~\thefigure}
\newcommand{\figurename}{図}

%
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\newcommand{\thetable}{\bf\@arabic\c@table}
%\def\fnum@table{\small \baselineskip 10pt {\bf \tablename}\thetable}
\def\fnum@table{\baselineskip 1.2em {\bf \tablename~\thetable} \ }
\newcommand{\tablename}{表}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%
\def\footnoterule{%
\kern -3\p@
\hrule height 0.6\p@ width 1.0\columnwidth
\kern 8\p@}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\nalp#1{%
  \ifcase#1\or%
  a\or%
  b\or%
  c\or%
  d\or%
  e\or%
  f\or%
  g\or%
  h\else%
  i%
  \fi%
}%

\def\ndag#1{%
  \ifcase#1\or%
  \dag\or%
  \dag\dag\or%
  \dag\dag\dag\or%
  \dag\dag\dag\dag\or%
  \dag\dag\dag\dag\dag\or%
  \dag\dag\dag\dag\dag\dag\or%
  \dag\dag\dag\dag\dag\dag\dag\or%
  \dag\dag\dag\dag\dag\dag\dag\dag\or%
  \dag\dag\dag\dag\dag\dag\dag\dag\dag\else%
  \dag\dag\dag\dag\dag\dag\dag\dag\dag\dag%
  \fi%
}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%OK
\def\Affiliation{\@Affiliation}

%OK
\def\AffiliationKishi{\@AffiliationKishi}

%OK?
%\def\@Affiliation[#1]#2{\def\@thefnmark{}%
%  \@footnotetext{\small $^{\ast#1}$#2}}

%OK
\def\@Affiliation[#1]#2{\def\@thefnmark{}%
  \@footnotetext{\small $^{\ast#1}$#2}}

%
\def\@AffiliationKishi#1{\def\@thefnmark{}%
  \@footnotetext{\small#1}}

%OK
\def\Affiliate#1{\gdef\@Affiliate{#1}}
\def\Affiliation[#1]#2{$^{\ast{#1}}$ #2}
%\def\@AffiliationJ[#1]#2{\def\@thefnmark{}%
%  \@footnote{\hspace{-5mm}$^{\ast#1}$#2}}
%%\def\AffiliationJ[#1]#2{${}^\nalp{#1}$#2}

\def\AffiliateE#1{\gdef\@AffiliateE{#1}}
\def\AffiliationE[#1]#2{$^{\ast{#1}}$ #2}
%\def\AffiliationE[#1]#2{$^\nalp{#1}$#2}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%
\def\Title#1{\gdef\@Title{#1}}
\def\Author#1{\gdef\@Author{#1}}
\def\Authorentry#1[#2]{#1$^{\ast#2}$}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\newcounter{aaffiliate}

%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%
\def\TitleE#1{\gdef\@TitleE{#1}}
\def\AuthorE#1{\gdef\@AuthorE{#1}}
\def\AuthorentryE#1[#2]{#1${}^{\ast#2}$}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%
\def\Abstract#1{\gdef\@Abstract{#1}}
\def\AbstractE#1{\gdef\@AbstractE{#1}}
\def\Keywords#1{\gdef\@Keywords{#1}}
\def\KeywordsE#1{\gdef\@KeywordsE{#1}}

\if@twocolumn
	\def\MakeTitle{%
	\twocolumn[
	    \begin{center}%
	    {\bf\fontsize{12bp}{16bp}\selectfont\@Title\par}
	    {\fontsize{11bp}{16.5bp}\selectfont\protect\@Author\par}
	    {\fontsize{11bp}{16.5bp}\selectfont \protect\@Affiliate\par}
	    % English descriptions
	    {\bf\fontsize{11bp}{16.5bp}\selectfont\@TitleE\par}
	    {\fontsize{11bp}{16.5bp}\selectfont\protect\@AuthorE\par}
	    {\fontsize{11bp}{16.5bp}\selectfont \it\protect\@AffiliateE\par}
	    \end{center}
	    \begin{indentation}{0em}{0em}
	    \vspace{3.6mm}%13bp
		{\gtfamily\fontsize{9bp}{12bp}\selectfont\abstractname}
		{\rm\mc \fontsize{9bp}{12bp}\selectfont\@Abstract\par}
		{\vspace{3bp}\fontsize{9bp}{12bp}\selectfont\keywordsname \mcfamily\@Keywords}
	    \end{indentation}
	    \par\vskip 1.5em]
	}
	\def\MakeTitleE{% do not use
	  \clearpage
	  \onecolumn{
	    \begin{indentation}{1em}{1em}%
	    \begin{center}%
	    {\LARGE \@TitleE \par}%
	    \vspace{5mm}%
	    {\Large \lineskip .2em%
			\protect\@AuthorE\par%
		}%
	    \vspace{2mm}%
	    {\normalsize \lineskip .2em%
			\protect\@AffiliateE\par
		}%
	    \end{center}
	    \vspace{0mm}%
		%{\normalsize{Abstract} \par}
		{\rm\mc {\small\@AbstractE} \par }
		{\small{\bf Keywords: } \rm\mc \@KeywordsE }
	    \end{indentation}
	    \par}
	}
\else
	\def\MakeTitle{% do not use
	    \begin{center}%
	    {\fontsize{12pt}{16pt}\selectfont \@Title \par}% 16, 25
	    \vspace{5mm}%
	    {\Large \lineskip .2em%
			\fontsize{11pt}{16.5pt}\selectfont\protect\@Author\par%
		}%
	    \end{center}
	    \begin{indentation}{1em}{1em}%
	    \vspace{5mm}%
		{\normalsize\abstractname\par}
		{\rm\mc {\fontsize{9pt}{12pt}\selectfont \@Abstract} \par }
		{\small\keywordsname \rm\mc \@Keywords }
	    \end{indentation}
	    \par\vskip 2em
	}

	\def\MakeTitleE{% do not use
	  \clearpage
	    \begin{indentation}{1em}{1em}%
	    \begin{center}%
	    {\LARGE \@TitleE \par}%
	    \vspace{5mm}%
	    {\Large \lineskip .2em%
			\protect\@AuthorE\par%
		}%
	    \vspace{2mm}%
	    {\normalsize \lineskip .2em%
			\protect\@AffiliateE\par
		}%
	    \end{center}
	    \vspace{5mm}%
		{\normalsize{{\bf Abstract :}}\par}
		{\rm\mc {\small\@AbstractE} \par }
		{\small{\bf keywords : } \rm\mc \@KeywordsE }
	    \end{indentation}
	    \par
	}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\newcounter{figure}
\newcounter{table}
\setcounter{tocdepth}{3}
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{1}
\setcounter{totalnumber}{3}
\setcounter{dbltopnumber}{2}
\setcounter{secnumdepth}{4}
\setcounter{page}{1}
\setcounter{section}{0}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%
\DeclareOldFontCommand{\mc}{\normalfont\mcfamily}{\mathmc}
\DeclareOldFontCommand{\gt}{\normalfont\gtfamily}{\mathgt}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*{\cal}{\@fontswitch{\relax}{\mathcal}}
\DeclareRobustCommand*{\mit}{\@fontswitch{\relax}{\mathnormal}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%
%\def\@biblabel#1{[#1]}
\renewcommand{\@biblabel}[1]{ [#1]}
\newdimen \bibindent \bibindent=2.42em
\newenvironment{thebibliography}[1]
{\footnotesize
%{\normalsize
%{\fontsize{4bp}{7bp}
 \vspace{3mm}
  \begin{center}
  \refname\@mkboth{\refname}{\refname} \vspace{1mm}%
  \end{center}
  \list{\@biblabel{\arabic{enumiv}}}%
    {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin \labelwidth
    %\parsep 0.5em
    \baselineskip 0.0em %1.2
    \advance\leftmargin\labelsep
    \if@openbib
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
    \fi
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand{\theenumiv}{\arabic{enumiv}}}%
  \if@openbib
    \renewcommand{\newblock}{\par}
   \else
     \renewcommand{\newblock}{\hskip .11em \@plus.33em \@minus.07em}%
   \fi
   \sloppy\clubpenalty4000\widowpenalty4000%
   \sfcode`\.=\@m}{\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}%
\endlist
}

\newenvironment{indentation}[2]%
{\par
  \setlength{\leftmargin}{#1}%
  \setlength{\rightmargin}{#2}%
  \advance\linewidth -\leftmargin
  \advance\linewidth -\rightmargin
  \advance\@totalleftmargin\leftmargin
  \@setpar{{\@@par}}%
  \parshape 1 \@totalleftmargin \linewidth
  \ignorespaces
}{\par}

\newenvironment{table}{\@float{table}}{\end@float}

\newenvironment{table*}{\@dblfloat{table}}{\end@dblfloat}

\newenvironment{figure}{\@float{figure}}{\end@float}

\newenvironment{figure*}{\@dblfloat{figure}}{\end@dblfloat}

\renewenvironment{itemize}
  {\ifnum \@itemdepth >3\relax\@toodeep\else
   \advance\@itemdepth\@ne
   \edef\@itemitem{item\romannumeral\the\@itemdepth}%
   \list{\csname label\@itemitem\endcsname}{%
         \ifnum \@listdepth=\@ne \topsep.5\normalbaselineskip
           \else\topsep\z@\fi
         \parskip\z@ \itemsep\z@ \parsep\z@
         \labelwidth1zw \labelsep.3zw
         \ifnum \@itemdepth =\@ne \leftmargin1zw\relax
           \else\leftmargin\leftskip\fi
         \advance\leftmargin 1zw
         \def\makelabel##1{\hss\llap{##1}}}%
   \fi}{\endlist}

\newenvironment{description}
  {\list{}{\labelwidth\z@ \itemindent-\leftmargin
   \iftdir
      \leftmargin\leftskip \advance\leftmargin3\Cwd
      \rightmargin\rightskip
   \fi
      \labelsep=1zw \itemsep\z@
      \listparindent\z@ \topskip\z@ \parskip\z@ \partopsep\z@
      \let\makelabel\descriptionlabel}}{\endlist}

\newcommand{\descriptionlabel}[1]{\hspace\labelsep\normalfont\bfseries #1}

\newenvironment{verse}
  {\let\\=\@centercr\list{}{\itemsep\z@ \itemindent -1.5em%
     \listparindent\itemindent
     \rightmargin\leftmargin \advance\leftmargin 1.5em}\item[]}{\endlist}

\newenvironment{quotation}
  {\list{}{\listparindent 1.5em\itemindent\listparindent
     \rightmargin\leftmargin\parsep\z@ \@plus\p@}\item[]}{\endlist}

\newenvironment{quote}{\list{}{\rightmargin\leftmargin}\item[]}{\endlist}

\renewcommand{\theenumi}{\arabic{enumi}}
\renewcommand{\theenumii}{\alph{enumii}}
\renewcommand{\theenumiii}{\roman{enumiii}}
\renewcommand{\theenumiv}{\Alph{enumiv}}
\newcommand{\labelenumi}{\theenumi.}
\newcommand{\labelenumii}{(\theenumii)}
\newcommand{\labelenumiii}{\theenumiii.}
\newcommand{\labelenumiv}{\theenumiv.}
\renewcommand{\p@enumii}{\theenumi}
\renewcommand{\p@enumiii}{\theenumi(\theenumii)}
\renewcommand{\p@enumiv}{\p@enumiii\theenumiii}
\renewenvironment{enumerate}
  {\ifnum \@enumdepth >3\relax\@toodeep\else
   \advance\@enumdepth\@ne
   \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
   \list{\csname label\@enumctr\endcsname}{%
         \ifnum \@listdepth=\@ne \topsep.5\normalbaselineskip
           \else\topsep\z@\fi
         \parskip\z@ \itemsep\z@ \parsep\z@
         \labelwidth1zw \labelsep.3zw
         \ifnum \@enumdepth=\@ne \leftmargin1zw\relax
           \else\leftmargin\leftskip\fi
         \advance\leftmargin 1zw
         \usecounter{\@enumctr}%
         \def\makelabel##1{\hss\llap{##1}}}%
   \fi}{\endlist}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\thesection}{\bf{\arabic{section}.}}
% \renewcommand{\thesubsection}{\thesection\arabic{subsection}}
\renewcommand{\thesubsection}{ \arabic{subsection})}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraph}{(\Alph{paragraph})}
\renewcommand{\thesubparagraph}{(\alph{subparagraph})}

\newcommand{\section}[1]{\@startsection{section}{1}{\z@}%\
   {0.05\Cvs \@plus.5\Cdp \@minus.2\Cdp}%1.0
%  {0.25ex \@plus 1ex \@minus .2ex}%
   {0.15ex \@plus 1ex \@minus .2ex}%
   {\lineskip 0.5em \reset@font\fontsize{10bp}{14.95bp}\bfseries\gt}{\hspace{0mm}#1}
}

\newcommand{\bibsection}{\@startsection{section}{1}{\z@}%
   {0.25ex \@plus 1ex \@minus .2ex}%
   {0.15ex \@plus 1ex \@minus .2ex}%
   {\lineskip 0.5em \reset@font\normalsize\bfseries}%
}


\newcommand{\subsection}[1]{\@startsection{subsection}{2}{\z@}%
   {0.050\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
%  {0.25ex \@plus 1ex \@minus .2ex}%
   {0.025ex \@plus 1ex \@minus .2ex}%
   {\reset@font\fontsize{9bp}{14.95bp}\mc}{\hspace{-2mm}#1}
}

\newcommand{\subsubsection}[1]{\@startsection{subsubsection}{3}{\z@}%
   {0.05\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
   {0.05\Cvs \@plus.3\Cdp}%
   {\reset@font\normalsize\bfseries\gt}{\hspace{-2mm}#1}
}


\newcommand{\paragraph}[1]{\@startsection{paragraph}{4}{\z@}%
   {0.25ex \@plus 1ex \@minus .2ex}%
   {-1em}%
   {\reset@font\normalsize\bfseries}{\hspace{-2mm}{\underline{#1}}}
}

\newcommand{\subparagraph}[1]{\@startsection{subparagraph}{5}{\z@}%
   {0.25ex \@plus 1ex \@minus .2ex}%
   {-1em}%
   {\reset@font\normalsize\bfseries}{[#1]}
}


\newcommand{\ack}[1]{\noindent {\bf #1} \ }
%\newcommand{\ack}[1]{\noindent \small {\bf #1} \ }

\newcommand{\appendix}{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand{\thesection}{\Alph{section}}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{empty}
\pagenumbering{arabic}
%\def\PaperVol#1{\gdef\@PaperVol{#1}}
%\def\PaperNo#1{\gdef\@PaperNo{#1}}
%\def\Month#1{\gdef\@Month{#1}}
%\def\Year#1{\gdef\@Year{#1}}
%\def\ps@cadmplain{\let\@mkboth\@gobbletwo
%   \def\@oddhead{\normalsize\gt{\hfil ?R???s???[?^?x?????f?f?w???_????
%   \bf{\ Vol.\@PaperVol\ \ No.\@PaperNo\ \ \@Month\ \ \@Year} \hfil}}
%   \def\@oddfoot{\reset@font\hfil--\bf\thepage--\hfil}
%   \def\@evenhead{\normalsize\bf{\hfil Journal of Computer Aided
%   Diagnosis of Medical Images 
%   \ Vol.\@PaperVol\ \ No.\@PaperNo\ \ \@Month\ \ \@Year\ \hfil}}
%   \def\@evenfoot{\reset@font\hfil--\bf\thepage--\hfil}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%% Citations are superscripts (from aip.sty) %%%%
\def\@cite#1#2{\unskip\nobreak\relax
    \def\@tempa{\hbox{ [{#1}]}}%
    \futurelet\@tempc\@citexx}
\def\@citexx{\ifx.\@tempc\let\@tempd=\@citepunct\else
    \ifx,\@tempc\let\@tempd=\@citepunct\else
    \let\@tempd=\@tempa\fi\fi\@tempd}
\def\@citepunct{\@tempc\edef\@sf{
    \spacefactor=\the\spacefactor\relax}\@tempa
    \@sf\@gobble}

\def\citenum#1{{\def\@cite##1##2{##1}\cite{#1}}}
\def\citea#1{\@cite{#1}{}}

% Collapse citation numbers to ranges.  Non-numeric and undefined labels
% are handled.  No sorting is done.  E.g., 1,3,2,3,4,5,foo,1,2,3,?,4,5
% gives 1,3,2-5,foo,1-3,?,4,5
\newcount\@tempcntc
\def\@citexzzz[#1]#2{\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
  \@tempcnta\z@\@tempcntb\m@ne\def\@citea{}\@cite{\@for\@citeb:=#2\do
    {\@ifundefined
       {b@\@citeb}{\@citeo\@tempcntb\m@ne\@citea\def\@citea{,}{\bf ?}\@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
    {\setbox\z@\hbox{\global\@tempcntc0\csname b@\@citeb\endcsname\relax}%
     \ifnum\@tempcntc=\z@ \@citeo\@tempcntb\m@ne
       \@citea\def\@citea{,}\hbox{\csname b@\@citeb\endcsname}%
     \else
      \advance\@tempcntb\@ne
      \ifnum\@tempcntb=\@tempcntc
      \else\advance\@tempcntb\m@ne\@citeo
      \@tempcnta\@tempcntc\@tempcntb\@tempcntc\fi\fi}}\@citeo}{#1}}
\def\@citeozzz{\ifnum\@tempcnta>\@tempcntb\else\@citea\def\@citea{,}%
  \ifnum\@tempcnta=\@tempcntb\the\@tempcnta\else
   {\advance\@tempcnta\@ne\ifnum\@tempcnta=\@tempcntb \else \def\@citea{--}\fi
    \advance\@tempcnta\m@ne\the\@tempcnta\@citea\the\@tempcntb}\fi\fi}


% begin citesort.sty
% A replacement for \@citex which sorts citation numbers as well as
% compressing and allowing breaks.  Based on cite.sty by Donald
% Arseneau.
%
% for use in LaTeX say, \documentstyle[...,citesort,...]{...}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Allow, but strongly discourage, line breaks within a long
%     series of citations.  Compress lists of successive numbers
%     to one number range, e.g., 5,6,7,8,9 --> 5--9.  Compatible
%     with versions of \@cite that use exponents.
%              -- Donald Arseneau  1989
%
% Modified to sort the numbers so they come out in increasing order,
% regardless of the way they appear in the source. O(N^2) sort!
% Ian Green, CUED, 10-Dec-1991.  Improvements to img@eng.cam.ac.uk
% please. Version 1

\newcount\@minsofar
\newcount\@min
\newcount\@cite@temp
\def\@citex[#1]#2{%
\if@filesw \immediate \write \@auxout {\string \citation {#2}}\fi
\@tempcntb\m@ne \let\@h@ld\relax \def\@citea{}%
\@min\m@ne%
\@cite{%
  \@for \@citeb:=#2\do {\@ifundefined {b@\@citeb}%
    {\@h@ld\@citea\@tempcntb\m@ne{\bf ?}%
    \@warning {Citation `\@citeb ' on page \thepage \space undefined}}%
{\@minsofar\z@ \@for \@scan@cites:=#2\do {%
  \@ifundefined{b@\@scan@cites}%
    {\@cite@temp\m@ne}
    {\@cite@temp\number\csname b@\@scan@cites \endcsname \relax}%
\ifnum\@cite@temp > \@min% select the next one to list
    \ifnum\@minsofar = \z@
      \@minsofar\number\@cite@temp
      \edef\@scan@copy{\@scan@cites}\else
    \ifnum\@cite@temp < \@minsofar
      \@minsofar\number\@cite@temp
      \edef\@scan@copy{\@scan@cites}\fi\fi\fi}\@tempcnta\@min
  \ifnum\@minsofar > \z@ % some more
    \advance\@tempcnta\@ne
    \@min\@minsofar
    \ifnum\@tempcnta=\@minsofar %   Number follows previous--hold on to it
      \ifx\@h@ld\relax
        \edef \@h@ld{\@citea\csname b@\@scan@copy\endcsname}%
      \else \edef\@h@ld{\ifmmode{-}\else--\fi\csname b@\@scan@copy\endcsname}%
      \fi
    \else \@h@ld\@citea\csname b@\@scan@copy\endcsname
          \let\@h@ld\relax
  \fi % no more
\fi}%
\def\@citea{,\penalty\@highpenalty\,}}\@h@ld}{#1}}
% end of citesort.sty


\endinput
