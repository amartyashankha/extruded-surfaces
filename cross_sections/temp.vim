let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <silent> <Plug>Tex_Completion :call Tex_Complete("default","text")
imap <silent> <Plug> <Nop>
inoremap <silent> <Plug>Tex_LeftRight =Tex_LeftRight()
inoremap <silent> <Plug>Tex_MathCal =Tex_MathCal()
inoremap <silent> <Plug>Tex_MathBF =Tex_MathBF()
inoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
inoremap <silent> <Plug>Tex_FastCommandInsert =Tex_DoCommand('no')
inoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
inoremap <silent> <Plug>Tex_FastEnvironmentInsert =Tex_FastEnvironmentInsert("no")
imap <F1> <Plug>Tex_Help
imap <S-Tab> <Plug>SuperTabBackward
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
inoremap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
inoremap <Nul> 
snoremap <silent>  c
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
xmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nnoremap  :bprevious
nnoremap  :bnext
nnoremap  o
snoremap  "_c
map  t :OnlineThesaurusCurrentWord
nmap  r :w :!xelatex -halt-on-error main.tex
nnoremap  d :YcmShowDetailedDiagnostic
nnoremap  i  o\item 
vnoremap  K y:Thesaurus "
nnoremap  K :OnlineThesaurusCurrentWord
nmap  ca <Plug>NERDCommenterAltDelims
xmap  cu <Plug>NERDCommenterUncomment
nmap  cu <Plug>NERDCommenterUncomment
xmap  cb <Plug>NERDCommenterAlignBoth
nmap  cb <Plug>NERDCommenterAlignBoth
xmap  cl <Plug>NERDCommenterAlignLeft
nmap  cl <Plug>NERDCommenterAlignLeft
nmap  cA <Plug>NERDCommenterAppend
xmap  cy <Plug>NERDCommenterYank
nmap  cy <Plug>NERDCommenterYank
xmap  cs <Plug>NERDCommenterSexy
nmap  cs <Plug>NERDCommenterSexy
xmap  ci <Plug>NERDCommenterInvert
nmap  ci <Plug>NERDCommenterInvert
nmap  c$ <Plug>NERDCommenterToEOL
xmap  cn <Plug>NERDCommenterNested
nmap  cn <Plug>NERDCommenterNested
xmap  cm <Plug>NERDCommenterMinimal
nmap  cm <Plug>NERDCommenterMinimal
xmap  c  <Plug>NERDCommenterToggle
nmap  c  <Plug>NERDCommenterToggle
xmap  cc <Plug>NERDCommenterComment
nmap  cc <Plug>NERDCommenterComment
nmap  G :Goyo
xmap    
nmap  0 <Plug>AirlineSelectTab10
nmap  9 <Plug>AirlineSelectTab9
nmap  8 <Plug>AirlineSelectTab8
nmap  7 <Plug>AirlineSelectTab7
nmap  6 <Plug>AirlineSelectTab6
nmap  5 <Plug>AirlineSelectTab5
nmap  4 <Plug>AirlineSelectTab4
nmap  3 <Plug>AirlineSelectTab3
nmap  2 <Plug>AirlineSelectTab2
nmap  1 <Plug>AirlineSelectTab1
map  ` :NERDTreeToggle
nnoremap <silent>   :nohlsearch|:echo
nnoremap  s  :source ~/.vimrc
nnoremap  x :bp|bd #
nnoremap  wq :wq
nnoremap  qqq :q!
nnoremap  ww :w!
nnoremap  qq :q
nnoremap  w :w
nnoremap  ui :GundoToggle
nnoremap  . f.a
noremap  , f,a
nnoremap  gr :Gread
nnoremap  gw :Gwrite
nnoremap   :nohlsearch
xnoremap , :call ExecMap(',', 'v')
xnoremap ,pi :call VEnclose('', '', '\begin{picture}', '\end{picture}')
xnoremap ,mp :call VEnclose('', '', '\begin{minipage}', '\end{minipage}')
xnoremap <silent> ,lr :call VEnclose('\sbox{', '}', '\begin{lrbox}', '\end{lrbox}')
xnoremap ,fi :call VEnclose('', '', '\begin{figure}', '\end{figure}')
xnoremap ,pg :call VEnclose('\paragraph{', '}', '', '')
xnoremap ,s2 :call VEnclose('\subsubsection{', '}', '', '')
xnoremap ,ss :call VEnclose('\subsection{', '}', '', '')
xnoremap ,se :call VEnclose('\section{', '}', '', '')
xnoremap ,ch :call VEnclose('\chapter{', '}', '', '')
xnoremap ,pa :call VEnclose('\part{', '}', '', '')
xnoremap <silent> ,sl :call VEnclose('', '', '\begin{slide}', '\end{slide}')
xnoremap <silent> ,ov :call VEnclose('', '', '\begin{overlay}', '\end{overlay}')
xnoremap <silent> ,no :call VEnclose('', '', '\begin{note}', '\end{note}')
xnoremap <silent> ,tb :call VEnclose('', '', '\begin{thebibliography}', '\end{thebibliography}')
xnoremap <silent> ,ve :call VEnclose('', '', '\begin{verse}', '\end{verse}')
xnoremap <silent> ,vm :call VEnclose('\verb|', '|', '\begin{verbatim}', '\end{verbatim}')
xnoremap <silent> ,tp :call VEnclose('', '', '\begin{titlepage}', '\end{titlepage}')
xnoremap ,sp :call VEnclose('\subparagraph{', '}', '', '')
xnoremap <silent> ,qe :call VEnclose('', '', '\begin{quote}', '\end{quote}')
xnoremap <silent> ,qn :call VEnclose('', '', '\begin{quotation}', '\end{quotation}')
xnoremap <silent> ,fr :call VEnclose('{\raggedright ', '}', '\begin{flushright}', '\end{flushright}')
xnoremap <silent> ,fl :call VEnclose('', '', '\begin{flushleft}', '\end{flushleft}')
xnoremap <silent> ,fc :call VEnclose('', '', '\begin{filecontents}', '\end{filecontents}')
xnoremap <silent> ,do :call VEnclose('', '', '\begin{document}', '\end{document}')
xnoremap <silent> ,ce :call VEnclose('\centerline{', '}', '\begin{center}', '\end{center}')
xnoremap <silent> ,ap :call VEnclose('', '', '\begin{appendix}', '\end{appendix}')
xnoremap <silent> ,ab :call VEnclose('', '', '\begin{abstract}', '\end{abstract}')
xnoremap <silent> ,ma :call VEnclose('', '', '\begin{math}', '\end{math}')
xnoremap <silent> ,eq :call VEnclose('', '', '\begin{equation}', '\end{equation}')
xnoremap <silent> ,ea :call VEnclose('', '', '\begin{eqnarray}', '\end{eqnarray}')
xnoremap <silent> ,dm :call VEnclose('', '', '\begin{displaymath}', '\end{displaymath}')
xnoremap ,ar :call VEnclose('', '', '\begin{array}', '\end{array}')
xnoremap <silent> ,al :call VEnclose('', '', '\begin{align}', '\end{align}')
xnoremap ,tr :call VEnclose('', '', '\begin{tabular}', '\end{tabular}')
xnoremap <silent> ,tg :call VEnclose('', '', '\begin{tabbing}', '\end{tabbing}')
xnoremap ,te :call VEnclose('', '', '\begin{table}', '\end{table}')
xnoremap <silent> ,tl :call VEnclose('', '', '\begin{trivlist}', '\end{trivlist}')
xnoremap <silent> ,ti :call VEnclose('', '', '\begin{theindex}', '\end{theindex}')
xnoremap <silent> ,it :call VEnclose('', '', '\begin{itemize}', '\end{itemize}')
xnoremap <silent> ,en :call VEnclose('', '', '\begin{enumerate}', '\end{enumerate}')
xnoremap ,de :call VEnclose('', '', '\begin{description}', '\end{description}')
xnoremap ,li :call VEnclose('', '', '\begin{list}', '\end{list}')
nnoremap K :grep! "\b\b":cw
xmap S <Plug>VSurround
xnoremap ` :call ExecMap('`', 'v')
xnoremap <silent> `em :call VEnclose('\emph{', '}', '{\em', '\/}')
xnoremap <silent> `it :call VEnclose('\textit{', '}', '{\itshape ', '}')
xnoremap <silent> `sc :call VEnclose('\textsc{', '}', '{\scshape ', '}')
xnoremap <silent> `sl :call VEnclose('\textsl{', '}', '{\slshape ', '}')
xnoremap <silent> `up :call VEnclose('\textup{', '}', '{\upshape ', '}')
xnoremap <silent> `rm :call VEnclose('\textrm{', '}', '{\rmfamily ', '}')
xnoremap <silent> `sf :call VEnclose('\textsf{', '}', '{\sffamily ', '}')
xnoremap <silent> `tt :call VEnclose('\texttt{', '}', '{\ttfamily ', '}')
xnoremap <silent> `md :call VEnclose('\textmd{', '}', '{\mdseries ', '}')
xnoremap <silent> `bf :call VEnclose('\textbf{', '}', '{\bfseries ', '}')
xnoremap <silent> `$ :call VEnclose('$', '$', '\[', '\]')
xnoremap <silent> `{ :call VEnclose('\left\{ ', ' \right\}', '\left\{', '\right\}')
xnoremap <silent> `[ :call VEnclose('\left[ ', ' \right]', '\left[', '\right]')
xnoremap <silent> `( :call VEnclose('\left( ', ' \right)', '\left(', '\right)')
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xnoremap j gj
nnoremap j gj
xnoremap k gk
nnoremap k gk
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>Tex_LeftRight :call Tex_PutLeftRight()
vnoremap <silent> <Plug>Tex_MathCal `>a}`<i\mathcal{
vnoremap <silent> <Plug>Tex_MathBF `>a}`<i\mathbf{
nnoremap <Plug>Tex_RefreshFolds :call MakeTexFolds(1)
nnoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
vnoremap <silent> <Plug>Tex_FastCommandInsert :call Tex_DoCommand('yes')
nnoremap <silent> <Plug>Tex_FastCommandInsert i=Tex_DoCommand('no')
nnoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
vnoremap <silent> <Plug>Tex_FastEnvironmentInsert :call Tex_FastEnvironmentInsert("yes")
nnoremap <silent> <Plug>Tex_FastEnvironmentInsert i=Tex_FastEnvironmentInsert("no")
nmap <F1> <Plug>Tex_Help
nmap <silent> <Plug> i
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
xnoremap <silent> <Plug>(Limelight) :Limelight
nnoremap <silent> <Plug>(Limelight) :set opfunc=limelight#operatorg@
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
nnoremap <SNR>52_: :=v:count ? v:count : ''
nnoremap <silent> <Plug>SurroundRepeat .
snoremap <silent> <Del> c
snoremap <silent> <BS> c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
vnoremap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
map <F12> :setlocal spell! spelllang=en_us
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
imap <NL> <Plug>IMAP_JumpForward
inoremap <expr>  pumvisible() ? "\" : "\"
inoremap <expr>  pumvisible() ? "\" : "\"
imap  <Plug>Isurround
imap jj <F5>
imap jk 
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set completefunc=youcompleteme#CompleteFunc
set completeopt=preview,menuone
set errorbells
set expandtab
set exrc
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=ag\ --nogroup\ --nocolor
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:>\ ,trail:·
set path=.,/usr/include,,,**
set printoptions=number:y,duplex:long,paper:letter
set pyxversion=3
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/YCM-Generator,~/.vim/bundle/ack.vim,~/.vim/bundle/gruvbox,~/.vim/bundle/ultisnips,~/.vim/bundle/vim-snippets,~/.vim/bundle/vim-surround,~/.vim/bundle/nerdtree,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-airline-themes,~/.vim/bundle/vim-fugitive,~/.vim/bundle/nerdcommenter,~/.vim/bundle/SimpylFold,~/.vim/bundle/vim-online-thesaurus,~/.vim/bundle/supertab,~/.vim/bundle/vim-polyglot,~/.vim/bundle/highlight.vim,~/.vim/bundle/goyo.vim,~/.vim/bundle/limelight.vim,~/.vim/bundle/vim-gas,~/.vim/bundle/gundo.vim,~/.vim/bundle/vim-es6,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/mySnippets,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/YCM-Generator/after,~/.vim/bundle/ack.vim/after,~/.vim/bundle/gruvbox/after,~/.vim/bundle/ultisnips/after,~/.vim/bundle/vim-snippets/after,~/.vim/bundle/vim-surround/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/vim-airline/after,~/.vim/bundle/vim-airline-themes/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/nerdcommenter/after,~/.vim/bundle/SimpylFold/after,~/.vim/bundle/vim-online-thesaurus/after,~/.vim/bundle/supertab/after,~/.vim/bundle/vim-polyglot/after,~/.vim/bundle/highlight.vim/after,~/.vim/bundle/goyo.vim/after,~/.vim/bundle/limelight.vim/after,~/.vim/bundle/vim-gas/after,~/.vim/bundle/gundo.vim/after,~/.vim/bundle/vim-es6/after
set secure
set shiftwidth=4
set showmatch
set showtabline=2
set smartcase
set smarttab
set softtabstop=4
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set tags=./tags;
set ttimeoutlen=0
set wildmenu
set wildmode=longest,list,full
set winaltkeys=no
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Origami/extruded-surfaces/cross_sections
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +35 ~/Origami/extruded-surfaces/main.tex
badd +4 ~/Origami/extruded-surfaces/introduction.tex
badd +30 cross_sections.tex
badd +25 evolution.tex
badd +30 joints.tex
badd +11 flat.tex
badd +84 folding.tex
badd +35 multiple.tex
argglobal
silent! argdel *
$argadd ~/Origami/extruded-surfaces/7OSME-paper-template.bbl
edit folding.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
noremap <buffer> <silent>  lj :LatexLabels
noremap <buffer> <silent>  lt :LatexTOC
noremap <buffer>  le :LatexErrors
noremap <buffer>  lk :LatexmkStop
noremap <buffer>  lG :LatexmkStatus!
noremap <buffer>  lg :LatexmkStatus
noremap <buffer>  lC :LatexmkClean!
noremap <buffer>  lc :LatexmkClean
noremap <buffer>  lL :Latexmk!
nmap <buffer> <silent>  rf <Plug>Tex_RefreshFolds
nmap <buffer>  ls <Plug>Tex_ForwardSearch
noremap <buffer>  lv :LatexView
noremap <buffer>  ll :Latexmk
omap <buffer> % <Plug>LatexBox_JumpToMatch
xmap <buffer> % <Plug>LatexBox_JumpToMatch
nmap <buffer> % <Plug>LatexBox_JumpToMatch
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
onoremap <buffer> a$ :normal va$
xmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
onoremap <buffer> ae :normal vae
xmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
onoremap <buffer> i$ :normal vi$
xmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
onoremap <buffer> ie :normal vie
xmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
xmap <buffer> <silent> ã <Plug>Tex_MathCal
xmap <buffer> <silent> â <Plug>Tex_MathBF
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=79
setlocal colorcolumn=79
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=~/.vim/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%E!\ LaTeX\ %trror:\ %m,%E%f:%l:\ %m,%E!\ %m,%Z<argument>\ %m,%Cl.%l\ %m,%-C(biblatex)%.%#in\ t%.%#,%-C(biblatex)%.%#Please\ v%.%#,%-C(biblatex)%.%#LaTeX\ a%.%#,%-Z(biblatex)%m,%-C(hyperref)%.%#on\ input\ line\ %l.,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%+W%.%#Warning:\ %m,%+P**%f,%+P**\"%f\",%-G%.%#
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=latex\ -interaction=nonstopmode\ -file-line-error-style\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=LatexBox_Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
25,41fold
1,42fold
1
normal! zo
let s:l = 92 - ((87 * winheight(0) + 40) / 81)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
92
normal! 08|
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
