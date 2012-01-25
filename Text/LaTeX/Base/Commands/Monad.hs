{-# LANGUAGE OverloadedStrings #-}

-- | LaTeX standard commands and environments.
-- 
-- /For contributors: This module was automatically generated by HaTeX-meta./
-- /So, please, don't make any change here directly, because/
-- /this is intended to be generated from/
-- "Text.LaTeX.Base.Commands" /module via HaTeX-meta,/
-- /and therefore, changes must to be done in these places./

module Text.LaTeX.Base.Commands.Monad
 ( -- * Basic functions
   raw , between
   -- * Preamble commands
 , title
 , author
 , date
 , institute
 , thanks
 , documentclass
 , usepackage
 , linespread
   -- ** Classes
   -- *** Document classes
 , article
 , proc
 , report
 , minimal
 , book
 , slides
   -- *** Class options
 , draft
 , titlepage
 , notitlepage
 , onecolumn
 , twocolumn
 , oneside
 , twoside
 , landscape
 , openright
 , openany
 , fleqn
 , leqno
   -- ** Paper sizes
 , a0paper
 , a1paper
 , a2paper
 , a3paper
 , a4paper
 , a5paper
 , a6paper
 , b0paper
 , b1paper
 , b2paper
 , b3paper
 , b4paper
 , b5paper
 , b6paper
 , letterpaper
 , executivepaper
 , legalpaper
   -- ** Page styles
 , pagestyle
 , thispagestyle
 , plain
 , headings
 , empty
 , myheadings
 , markboth
 , markright
   -- * Body commands
 , document
 , maketitle
   -- ** Document structure
 , tableofcontents
 , abstract
 , appendix
   -- *** Sections
 , part
 , chapter
 , section
 , subsection
 , subsubsection
 , paragraph
 , subparagraph
   -- ** Logos & symbols
 , today
 , tex
 , latex
 , laTeX2
 , laTeXe
 , ldots
 , vdots
 , ddots
 -- *** HaTeX specific
 , hatex
 , hatex3
 , hatex_meta
 , hatex_version
 -- ** Document layout
 , par
 , newline
 , lnbk
 , lnbk_
 , newpage
 , cleardoublepage
 , clearpage
 , linebreak
 , nolinebreak
 , pagebreak
 , nopagebreak
 , hspace
 , hspace_
 , vspace
 , stretch
 , smallskip
 , bigskip
 , indent
 , noindent
   -- *** Document measures
 , textwidth
 , linewidth
   -- ** Formatting text
 , verbatim
   -- *** Fonts
 , textbf
 , textit
 , texttt
 , textrm
 , textsf
 , textmd
 , textup
 , textsl
 , textsc
 , textnormal
 , underline
 , emph
   -- *** Sizes
 , tiny
 , scriptsize
 , footnotesize
 , small
 , normalsize
 , large
 , large2
 , large3
 , huge
 , huge2
   -- ** Environments
 , equation
 , equation_
 , enumerate
 , itemize
 , item
 , flushleft
 , flushright
 , center
 , quote
 , verse
 , cite
 , description
 , minipage
   -- ** Page numbering
 , pagenumbering
 , arabic
 , roman
 , roman_
 , alph
 , alph_
   -- ** Boxes
 , mbox
 , fbox
 , parbox
 , framebox
 , makebox
 , raisebox
 , rule
   -- * Cross references
 , label
 , ref
 , pageref
   -- ** Tables
 , tabular
 , (&)
 , hline
 , cline
 -- ** Others
 , footnote
 , protect
 , hyphenation
 , hyp
 , qts
   ) where

import Text.LaTeX.Base.Writer
import Text.LaTeX.Base.Render
import Text.LaTeX.Base.Types
import qualified Text.LaTeX.Base.Commands as App
import Text.LaTeX.Base.Commands()

{-|
Insert a raw piece of 'Text'.
 This functions doesn't care about @LaTeX@ reserved characters,
 it insert the text just as it is received.
-}
raw ::   (Monad m) => Text -> LaTeXT_ m
raw a1 = do textell ( App.raw a1)

{-|
Calling 'between' @c l1 l2@ puts @c@ between @l1@ and @l2@ and
   appends them.
-}
between ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m -> LaTeXT_ m -> LaTeXT_ m
between a1 a2 a3
  = do a1 <- extractLaTeX_ a1
       a2 <- extractLaTeX_ a2
       a3 <- extractLaTeX_ a3
       textell ( App.between a1 a2 a3)

{-|
Generate the title. It normally contains the 'title' name
 of your document, the 'author'(s) and 'date'.
-}
maketitle ::   (Monad m) => LaTeXT_ m
maketitle = do textell ( App.maketitle)

-- | Set the title of your document.

title ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
title a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.title a1)

-- | Set a date for your document.

date ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
date a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.date a1)

-- | Set the author(s) of the document.

author ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
author a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.author a1)

{-|
Set either an institute or an organization
 for the document.
-}
institute ::   (Monad m) => Maybe (LaTeXT_ m) -> LaTeXT_ m -> LaTeXT_ m
institute a1 a2
  = do a1 <- maybe (return Nothing)
               ((>>= return . Just) . extractLaTeX_)
               a1
       a2 <- extractLaTeX_ a2
       textell ( App.institute a1 a2)


thanks ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
thanks a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.thanks a1)

{-|
Import a package. First argument is a list of options for
 the package named in the second argument.
-}
usepackage ::   (Monad m) => [LaTeXT_ m] -> String -> LaTeXT_ m
usepackage a1 a2
  = do a1 <- mapM extractLaTeX_ a1
       textell ( App.usepackage a1 a2)

-- | The @LaTeX@ logo.

latex ::   (Monad m) => LaTeXT_ m
latex = do textell ( App.latex)

-- | Start a new paragraph

par ::   (Monad m) => LaTeXT_ m
par = do textell ( App.par)

-- | Start a new line.

newline ::   (Monad m) => LaTeXT_ m
newline = do textell ( App.newline)


part ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
part a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.part a1)


chapter ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
chapter a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.chapter a1)

-- | Start a new section with a given title.

section ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
section a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.section a1)


subsection ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
subsection a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.subsection a1)


subsubsection ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
subsubsection a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.subsubsection a1)


paragraph ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
paragraph a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.paragraph a1)


subparagraph ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
subparagraph a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.subparagraph a1)

{-|
Create the table of contents, automatically generated
 from your 'section's, 'subsection's, and other related stuff.
-}
tableofcontents ::   (Monad m) => LaTeXT_ m
tableofcontents = do textell ( App.tableofcontents)


appendix ::   (Monad m) => LaTeXT_ m
appendix = do textell ( App.appendix)


item ::   (Monad m) => Maybe (LaTeXT_ m) -> LaTeXT_ m
item a1
  = do a1 <- maybe (return Nothing)
               ((>>= return . Just) . extractLaTeX_)
               a1
       textell ( App.item a1)


equation ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
equation a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.equation a1)


equation_ ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
equation_ a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.equation_ a1)


enumerate ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
enumerate a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.enumerate a1)


itemize ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
itemize a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.itemize a1)


description ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
description a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.description a1)


flushleft ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
flushleft a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.flushleft a1)


flushright ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
flushright a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.flushright a1)


center ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
center a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.center a1)


quote ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
quote a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.quote a1)


verse ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
verse a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.verse a1)

-- | minipage environments

minipage ::   (Monad m) => Maybe Pos -> LaTeXT_ m -> LaTeXT_ m -> LaTeXT_ m
minipage a1 a2 a3
  = do a2 <- extractLaTeX_ a2
       a3 <- extractLaTeX_ a3
       textell ( App.minipage a1 a2 a3)


abstract ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
abstract a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.abstract a1)


cite ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
cite a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.cite a1)


documentclass ::   (Monad m) => [LaTeXT_ m] -> LaTeXT_ m -> LaTeXT_ m
documentclass a1 a2
  = do a1 <- mapM extractLaTeX_ a1
       a2 <- extractLaTeX_ a2
       textell ( App.documentclass a1 a2)


article ::   (Monad m) => LaTeXT_ m
article = do textell ( App.article)


proc ::   (Monad m) => LaTeXT_ m
proc = do textell ( App.proc)


minimal ::   (Monad m) => LaTeXT_ m
minimal = do textell ( App.minimal)


report ::   (Monad m) => LaTeXT_ m
report = do textell ( App.report)


book ::   (Monad m) => LaTeXT_ m
book = do textell ( App.book)


slides ::   (Monad m) => LaTeXT_ m
slides = do textell ( App.slides)


a0paper ::   (Monad m) => LaTeXT_ m
a0paper = do textell ( App.a0paper)


a1paper ::   (Monad m) => LaTeXT_ m
a1paper = do textell ( App.a1paper)


a2paper ::   (Monad m) => LaTeXT_ m
a2paper = do textell ( App.a2paper)


a3paper ::   (Monad m) => LaTeXT_ m
a3paper = do textell ( App.a3paper)


a4paper ::   (Monad m) => LaTeXT_ m
a4paper = do textell ( App.a4paper)


a5paper ::   (Monad m) => LaTeXT_ m
a5paper = do textell ( App.a5paper)


a6paper ::   (Monad m) => LaTeXT_ m
a6paper = do textell ( App.a6paper)


b0paper ::   (Monad m) => LaTeXT_ m
b0paper = do textell ( App.b0paper)


b1paper ::   (Monad m) => LaTeXT_ m
b1paper = do textell ( App.b1paper)


b2paper ::   (Monad m) => LaTeXT_ m
b2paper = do textell ( App.b2paper)


b3paper ::   (Monad m) => LaTeXT_ m
b3paper = do textell ( App.b3paper)


b4paper ::   (Monad m) => LaTeXT_ m
b4paper = do textell ( App.b4paper)


b5paper ::   (Monad m) => LaTeXT_ m
b5paper = do textell ( App.b5paper)


b6paper ::   (Monad m) => LaTeXT_ m
b6paper = do textell ( App.b6paper)


letterpaper ::   (Monad m) => LaTeXT_ m
letterpaper = do textell ( App.letterpaper)


executivepaper ::   (Monad m) => LaTeXT_ m
executivepaper = do textell ( App.executivepaper)


legalpaper ::   (Monad m) => LaTeXT_ m
legalpaper = do textell ( App.legalpaper)


draft ::   (Monad m) => LaTeXT_ m
draft = do textell ( App.draft)

-- | Typesets displayed formulae left-aligned instead of centred.

fleqn ::   (Monad m) => LaTeXT_ m
fleqn = do textell ( App.fleqn)

-- | Places the numbering of formulae on the left hand side instead of the right.

leqno ::   (Monad m) => LaTeXT_ m
leqno = do textell ( App.leqno)


titlepage ::   (Monad m) => LaTeXT_ m
titlepage = do textell ( App.titlepage)


notitlepage ::   (Monad m) => LaTeXT_ m
notitlepage = do textell ( App.notitlepage)


onecolumn ::   (Monad m) => LaTeXT_ m
onecolumn = do textell ( App.onecolumn)


twocolumn ::   (Monad m) => LaTeXT_ m
twocolumn = do textell ( App.twocolumn)


oneside ::   (Monad m) => LaTeXT_ m
oneside = do textell ( App.oneside)


twoside ::   (Monad m) => LaTeXT_ m
twoside = do textell ( App.twoside)

-- | Changes the layout of the document to print in landscape mode

landscape ::   (Monad m) => LaTeXT_ m
landscape = do textell ( App.landscape)

-- | Makes chapters begin either only on right hand pages

openright ::   (Monad m) => LaTeXT_ m
openright = do textell ( App.openright)

-- | Makes chapters begin on the next page available.

openany ::   (Monad m) => LaTeXT_ m
openany = do textell ( App.openany)


document ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
document a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.document a1)


pagenumbering ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
pagenumbering a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.pagenumbering a1)

-- | Arabic numerals.

arabic ::   (Monad m) => LaTeXT_ m
arabic = do textell ( App.arabic)

-- | Lowercase roman numerals.

roman ::   (Monad m) => LaTeXT_ m
roman = do textell ( App.roman)

-- | Uppercase roman numerals.

roman_ ::   (Monad m) => LaTeXT_ m
roman_ = do textell ( App.roman_)

-- | Lowercase letters.

alph ::   (Monad m) => LaTeXT_ m
alph = do textell ( App.alph)

-- | Uppercase letters.

alph_ ::   (Monad m) => LaTeXT_ m
alph_ = do textell ( App.alph_)


pagestyle ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
pagestyle a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.pagestyle a1)


thispagestyle ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
thispagestyle a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.thispagestyle a1)


plain ::   (Monad m) => LaTeXT_ m
plain = do textell ( App.plain)


headings ::   (Monad m) => LaTeXT_ m
headings = do textell ( App.headings)


empty ::   (Monad m) => LaTeXT_ m
empty = do textell ( App.empty)


myheadings ::   (Monad m) => LaTeXT_ m
myheadings = do textell ( App.myheadings)

-- | Used in conjunction with 'myheadings' for setting both the left and the right heading.

markboth ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m -> LaTeXT_ m
markboth a1 a2
  = do a1 <- extractLaTeX_ a1
       a2 <- extractLaTeX_ a2
       textell ( App.markboth a1 a2)

-- | Used in conjunction with 'myheadings' for setting the right heading.

markright ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
markright a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.markright a1)

-- | Start a new line. In a 'tabular', it starts a new row, so use 'newline' instead.

lnbk ::   (Monad m) => LaTeXT_ m
lnbk = do textell ( App.lnbk)


lnbk_ ::   (Monad m) => LaTeXT_ m
lnbk_ = do textell ( App.lnbk_)


hyp ::   (Monad m) => LaTeXT_ m
hyp = do textell ( App.hyp)


cleardoublepage ::   (Monad m) => LaTeXT_ m
cleardoublepage = do textell ( App.cleardoublepage)


clearpage ::   (Monad m) => LaTeXT_ m
clearpage = do textell ( App.clearpage)


newpage ::   (Monad m) => LaTeXT_ m
newpage = do textell ( App.newpage)


linebreak ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
linebreak a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.linebreak a1)


nolinebreak ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
nolinebreak a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.nolinebreak a1)


nopagebreak ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
nopagebreak a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.nopagebreak a1)


pagebreak ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
pagebreak a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.pagebreak a1)


hyphenation ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
hyphenation a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.hyphenation a1)


mbox ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
mbox a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.mbox a1)


fbox ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
fbox a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.fbox a1)


today ::   (Monad m) => LaTeXT_ m
today = do textell ( App.today)


tex ::   (Monad m) => LaTeXT_ m
tex = do textell ( App.tex)


laTeX2 ::   (Monad m) => LaTeXT_ m
laTeX2 = do textell ( App.laTeX2)


laTeXe ::   (Monad m) => LaTeXT_ m
laTeXe = do textell ( App.laTeXe)

-- | Horizontal dots.

ldots ::   (Monad m) => LaTeXT_ m
ldots = do textell ( App.ldots)

-- | Vertical dots.

vdots ::   (Monad m) => LaTeXT_ m
vdots = do textell ( App.vdots)

-- | Diagonal dots.

ddots ::   (Monad m) => LaTeXT_ m
ddots = do textell ( App.ddots)

-- | Quotation marks.

qts ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
qts a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.qts a1)


footnote ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
footnote a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.footnote a1)


linespread ::   (Monad m) => Float -> LaTeXT_ m
linespread a1 = do textell ( App.linespread a1)


indent ::   (Monad m) => LaTeXT_ m
indent = do textell ( App.indent)


noindent ::   (Monad m) => LaTeXT_ m
noindent = do textell ( App.noindent)


hspace ::   (Monad m) => Measure -> LaTeXT_ m
hspace a1 = do textell ( App.hspace a1)


hspace_ ::   (Monad m) => Measure -> LaTeXT_ m
hspace_ a1 = do textell ( App.hspace_ a1)


stretch ::   (Monad m) => Int -> LaTeXT_ m
stretch a1 = do textell ( App.stretch a1)


vspace ::   (Monad m) => Measure -> LaTeXT_ m
vspace a1 = do textell ( App.vspace a1)


protect ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
protect a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.protect a1)


textwidth ::   (Monad m) => LaTeXT_ m
textwidth = do textell ( App.textwidth)


linewidth ::   (Monad m) => LaTeXT_ m
linewidth = do textell ( App.linewidth)


verbatim ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
verbatim a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.verbatim a1)


underline ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
underline a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.underline a1)


emph ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
emph a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.emph a1)


textrm ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
textrm a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.textrm a1)


textsf ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
textsf a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.textsf a1)


texttt ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
texttt a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.texttt a1)


textmd ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
textmd a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.textmd a1)


textbf ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
textbf a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.textbf a1)


textup ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
textup a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.textup a1)


textit ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
textit a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.textit a1)


textsl ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
textsl a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.textsl a1)


textsc ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
textsc a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.textsc a1)


textnormal ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
textnormal a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.textnormal a1)


tiny ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
tiny a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.tiny a1)


scriptsize ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
scriptsize a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.scriptsize a1)


footnotesize ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
footnotesize a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.footnotesize a1)


small ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
small a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.small a1)


normalsize ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
normalsize a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.normalsize a1)


large ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
large a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.large a1)


large2 ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
large2 a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.large2 a1)


large3 ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
large3 a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.large3 a1)


huge ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
huge a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.huge a1)


huge2 ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m
huge2 a1
  = do a1 <- extractLaTeX_ a1
       textell ( App.huge2 a1)


smallskip ::   (Monad m) => LaTeXT_ m
smallskip = do textell ( App.smallskip)


bigskip ::   (Monad m) => LaTeXT_ m
bigskip = do textell ( App.bigskip)

-- | The 'tabular' environment can be used to typeset tables with optional horizontal and vertical lines.

tabular ::   (Monad m) => Maybe Pos -> [TableSpec] -> LaTeXT_ m -> LaTeXT_ m
tabular a1 a2 a3
  = do a3 <- extractLaTeX_ a3
       textell ( App.tabular a1 a2 a3)


(&) ::   (Monad m) => LaTeXT_ m -> LaTeXT_ m -> LaTeXT_ m
(&) a1 a2
  = do a1 <- extractLaTeX_ a1
       a2 <- extractLaTeX_ a2
       textell ( (App.&) a1 a2)

-- | Horizontal line.

hline ::   (Monad m) => LaTeXT_ m
hline = do textell ( App.hline)

-- | @cline i j@ writes a partial horizontal line beginning in column i and ending in column j.

cline ::   (Monad m) => Int -> Int -> LaTeXT_ m
cline a1 a2 = do textell ( App.cline a1 a2)


parbox ::   (Monad m) => Maybe Pos -> Measure -> LaTeXT_ m -> LaTeXT_ m
parbox a1 a2 a3
  = do a3 <- extractLaTeX_ a3
       textell ( App.parbox a1 a2 a3)


makebox ::   (Monad m) => Maybe Measure -> Maybe Pos -> LaTeXT_ m -> LaTeXT_ m
makebox a1 a2 a3
  = do a3 <- extractLaTeX_ a3
       textell ( App.makebox a1 a2 a3)


framebox ::   (Monad m) => Maybe Measure -> Maybe Pos -> LaTeXT_ m -> LaTeXT_ m
framebox a1 a2 a3
  = do a3 <- extractLaTeX_ a3
       textell ( App.framebox a1 a2 a3)


raisebox ::   (Monad m) =>
  Measure -> Maybe Measure -> Maybe Measure -> LaTeXT_ m -> LaTeXT_ m
raisebox a1 a2 a3 a4
  = do a4 <- extractLaTeX_ a4
       textell ( App.raisebox a1 a2 a3 a4)

-- | Produce a simple black box.

rule ::   (Monad m) => Maybe Measure -> Measure -> Measure -> LaTeXT_ m
rule a1 a2 a3 = do textell ( App.rule a1 a2 a3)

-- | Print the HaTeX logo.

hatex ::   (Monad m) => LaTeXT_ m
hatex = do textell ( App.hatex)

-- | Print the HaTeX 3 logo.

hatex3 ::   (Monad m) => LaTeXT_ m
hatex3 = do textell ( App.hatex3)

-- | Print the HaTeX-meta logo.

hatex_meta ::   (Monad m) => LaTeXT_ m
hatex_meta = do textell ( App.hatex_meta)

-- | Print the HaTeX logo, beside the complete version number.

hatex_version ::   (Monad m) => LaTeXT_ m
hatex_version = do textell ( App.hatex_version)


label ::   (Monad m) => Label -> LaTeXT_ m
label a1 = do textell ( App.label a1)


ref ::   (Monad m) => Label -> LaTeXT_ m
ref a1 = do textell ( App.ref a1)


pageref ::   (Monad m) => Label -> LaTeXT_ m
pageref a1 = do textell ( App.pageref a1)


