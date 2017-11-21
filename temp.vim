let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <F1> <Plug>Tex_Help
inoremap <silent> <Plug>Tex_FastEnvironmentInsert =Tex_FastEnvironmentInsert("no")
inoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
inoremap <silent> <Plug>Tex_FastCommandInsert =Tex_DoCommand('no')
inoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
inoremap <silent> <Plug>Tex_MathBF =Tex_MathBF()
inoremap <silent> <Plug>Tex_MathCal =Tex_MathCal()
inoremap <silent> <Plug>Tex_LeftRight =Tex_LeftRight()
imap <silent> <Plug> <Nop>
inoremap <silent> <Plug>Tex_Completion :call Tex_Complete("default","text")
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
imap <S-Tab> <Plug>SuperTabBackward
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
inoremap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
imap <Nul> <C-Space>
snoremap <silent>  c
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
xmap <NL> <Plug>IMAP_JumpForward
smap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nnoremap  :bprevious
nnoremap  :bnext
nnoremap  o
snoremap  "_c
nnoremap  i  o\item 
nnoremap  d :YcmShowDetailedDiagnostic
nmap  r :w :!xelatex -halt-on-error main.tex
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
map  t :OnlineThesaurusCurrentWord
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
vnoremap ,li :call VEnclose('', '', '\begin{list}', '\end{list}')
vnoremap ,de :call VEnclose('', '', '\begin{description}', '\end{description}')
vnoremap <silent> ,en :call VEnclose('', '', '\begin{enumerate}', '\end{enumerate}')
vnoremap <silent> ,it :call VEnclose('', '', '\begin{itemize}', '\end{itemize}')
vnoremap <silent> ,ti :call VEnclose('', '', '\begin{theindex}', '\end{theindex}')
vnoremap <silent> ,tl :call VEnclose('', '', '\begin{trivlist}', '\end{trivlist}')
vnoremap ,te :call VEnclose('', '', '\begin{table}', '\end{table}')
vnoremap <silent> ,tg :call VEnclose('', '', '\begin{tabbing}', '\end{tabbing}')
vnoremap ,tr :call VEnclose('', '', '\begin{tabular}', '\end{tabular}')
vnoremap <silent> ,al :call VEnclose('', '', '\begin{align}', '\end{align}')
vnoremap ,ar :call VEnclose('', '', '\begin{array}', '\end{array}')
vnoremap <silent> ,dm :call VEnclose('', '', '\begin{displaymath}', '\end{displaymath}')
vnoremap <silent> ,ea :call VEnclose('', '', '\begin{eqnarray}', '\end{eqnarray}')
vnoremap <silent> ,eq :call VEnclose('', '', '\begin{equation}', '\end{equation}')
vnoremap <silent> ,ma :call VEnclose('', '', '\begin{math}', '\end{math}')
vnoremap <silent> ,ab :call VEnclose('', '', '\begin{abstract}', '\end{abstract}')
vnoremap <silent> ,ap :call VEnclose('', '', '\begin{appendix}', '\end{appendix}')
vnoremap <silent> ,ce :call VEnclose('\centerline{', '}', '\begin{center}', '\end{center}')
vnoremap <silent> ,do :call VEnclose('', '', '\begin{document}', '\end{document}')
vnoremap <silent> ,fc :call VEnclose('', '', '\begin{filecontents}', '\end{filecontents}')
vnoremap <silent> ,fl :call VEnclose('', '', '\begin{flushleft}', '\end{flushleft}')
vnoremap <silent> ,fr :call VEnclose('{\raggedright ', '}', '\begin{flushright}', '\end{flushright}')
vnoremap <silent> ,qn :call VEnclose('', '', '\begin{quotation}', '\end{quotation}')
vnoremap <silent> ,qe :call VEnclose('', '', '\begin{quote}', '\end{quote}')
vnoremap ,sp :call VEnclose('\subparagraph{', '}', '', '')
vnoremap <silent> ,tp :call VEnclose('', '', '\begin{titlepage}', '\end{titlepage}')
vnoremap <silent> ,vm :call VEnclose('\verb|', '|', '\begin{verbatim}', '\end{verbatim}')
vnoremap <silent> ,ve :call VEnclose('', '', '\begin{verse}', '\end{verse}')
vnoremap <silent> ,tb :call VEnclose('', '', '\begin{thebibliography}', '\end{thebibliography}')
vnoremap <silent> ,no :call VEnclose('', '', '\begin{note}', '\end{note}')
vnoremap <silent> ,ov :call VEnclose('', '', '\begin{overlay}', '\end{overlay}')
vnoremap <silent> ,sl :call VEnclose('', '', '\begin{slide}', '\end{slide}')
vnoremap ,pa :call VEnclose('\part{', '}', '', '')
vnoremap ,ch :call VEnclose('\chapter{', '}', '', '')
vnoremap ,se :call VEnclose('\section{', '}', '', '')
vnoremap ,ss :call VEnclose('\subsection{', '}', '', '')
vnoremap ,s2 :call VEnclose('\subsubsection{', '}', '', '')
vnoremap ,pg :call VEnclose('\paragraph{', '}', '', '')
vnoremap ,fi :call VEnclose('', '', '\begin{figure}', '\end{figure}')
vnoremap <silent> ,lr :call VEnclose('\sbox{', '}', '\begin{lrbox}', '\end{lrbox}')
vnoremap ,mp :call VEnclose('', '', '\begin{minipage}', '\end{minipage}')
vnoremap ,pi :call VEnclose('', '', '\begin{picture}', '\end{picture}')
vnoremap , :call ExecMap(',', 'v')
nnoremap K :grep! "\b\b":cw
xmap S <Plug>VSurround
vnoremap <silent> `( :call VEnclose('\left( ', ' \right)', '\left(', '\right)')
vnoremap <silent> `[ :call VEnclose('\left[ ', ' \right]', '\left[', '\right]')
vnoremap <silent> `{ :call VEnclose('\left\{ ', ' \right\}', '\left\{', '\right\}')
vnoremap <silent> `$ :call VEnclose('$', '$', '\[', '\]')
vnoremap <silent> `bf :call VEnclose('\textbf{', '}', '{\bfseries ', '}')
vnoremap <silent> `md :call VEnclose('\textmd{', '}', '{\mdseries ', '}')
vnoremap <silent> `tt :call VEnclose('\texttt{', '}', '{\ttfamily ', '}')
vnoremap <silent> `sf :call VEnclose('\textsf{', '}', '{\sffamily ', '}')
vnoremap <silent> `rm :call VEnclose('\textrm{', '}', '{\rmfamily ', '}')
vnoremap <silent> `up :call VEnclose('\textup{', '}', '{\upshape ', '}')
vnoremap <silent> `sl :call VEnclose('\textsl{', '}', '{\slshape ', '}')
vnoremap <silent> `sc :call VEnclose('\textsc{', '}', '{\scshape ', '}')
vnoremap <silent> `it :call VEnclose('\textit{', '}', '{\itshape ', '}')
vnoremap <silent> `em :call VEnclose('\emph{', '}', '{\em', '\/}')
vnoremap ` :call ExecMap('`', 'v')
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xmap gx <Plug>NetrwBrowseXVis
smap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
vnoremap j gj
nnoremap j gj
vnoremap k gk
nnoremap k gk
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nmap <silent> <Plug> i
nmap <F1> <Plug>Tex_Help
nnoremap <silent> <Plug>Tex_FastEnvironmentInsert i=Tex_FastEnvironmentInsert("no")
vnoremap <silent> <Plug>Tex_FastEnvironmentInsert :call Tex_FastEnvironmentInsert("yes")
nnoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
nnoremap <silent> <Plug>Tex_FastCommandInsert i=Tex_DoCommand('no')
vnoremap <silent> <Plug>Tex_FastCommandInsert :call Tex_DoCommand('yes')
nnoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
nnoremap <Plug>Tex_RefreshFolds :call MakeTexFolds(1)
vnoremap <silent> <Plug>Tex_MathBF `>a}`<i\mathbf{
vnoremap <silent> <Plug>Tex_MathCal `>a}`<i\mathcal{
nnoremap <silent> <Plug>Tex_LeftRight :call Tex_PutLeftRight()
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
set cpoptions=aAceFsB
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
set shiftwidth=0
set shortmess=filnxtToOc
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
set window=67
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Origami/extruded-surfaces
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +35 main.tex
badd +4 introduction.tex
badd +28 cross_sections/cross_sections.tex
badd +69 cross_sections/evolution.tex
badd +26 cross_sections/joints.tex
argglobal
silent! argdel *
$argadd 7OSME-paper-template.bbl
edit cross_sections/evolution.tex
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
vmap <buffer> % <Plug>LatexBox_JumpToMatch
nmap <buffer> % <Plug>LatexBox_JumpToMatch
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
onoremap <buffer> a$ :normal va$
vmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
onoremap <buffer> ae :normal vae
vmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
onoremap <buffer> i$ :normal vi$
vmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
onoremap <buffer> ie :normal vie
vmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
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
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
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
setlocal nocursorline
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
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*\\bibitem,=\\item
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
setlocal shiftwidth=0
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
28,38fold
56,62fold
69,73fold
1,80fold
1
normal! zo
let s:l = 54 - ((53 * winheight(0) + 40) / 81)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
