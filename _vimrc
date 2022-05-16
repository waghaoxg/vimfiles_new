"-----------------------add this in bashrc-----------
"alias gvimr='gvim --remote-tab'
"alias gvimt='gvim --remote-tab +"execute \"bdelete! \".term_list()[0]"'
"---------------------- general----------------------
" for python
set nocompatible

if has("win32")
	source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim  don't use Ctrl+C Ctrl+V ...
	behave mswin
"	nmap <silent> <c-Enter> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<cr>
    set guifont=consolas:h11
elseif has("macunix")
    set guifont=Monaco:h16
    set undodir=~/.vim/undodir
"    set clipboard=unnamed
elseif has("unix")
    "set guifont=Droid\ Sans\ Mono\ 10
    "set guifont=Monaco:h14
    set guifont=DejaVu\ Sans\ Mono\ 11
    set undodir=~/.vim/undodir
"    set clipboard=unnamed
endif                                              

syntax on
set showcmd

set rtp+=~/.fzf
"------vim-plug---------------------
"install
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"set
if has("unix")
	call plug#begin('~/.vim/bundle')
elseif has("macunix")
	call plug#begin('~/.vim/bundle')
elseif has("win32")
	call plug#begin('~/vimfile/bundle')
endif
"Plug 'junegunn/vim-plug'
Plug 'Valloric/YouCompleteMe'
Plug 'skywind3000/asyncrun.vim'
"Plug 'kien/ctrlp.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'SirVer/ultisnips'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'vim-scripts/taglist.vim'
Plug 'mphe/grayout.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-obsession'
Plug 't9md/vim-choosewin'
Plug 'lervag/vimtex'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mhinz/vim-signify'
Plug 'vim-scripts/Tabmerge'
Plug 'mkitt/tabline.vim'
Plug 'tpope/vim-vinegar'
Plug 'pbogut/fzf-mru.vim'
Plug 'rking/ag.vim'
Plug 'kshenoy/vim-signature'
"Plug 'vifm/vifm.vim'
Plug 'rhysd/vim-clang-format'
"Plugin 'roxma/vim-tmux-clipboard'
"Plugin 'tpope/vim-eunuch'
"Plugin 'vim-latex/vim-latex'
"Plugin 'Chiel92/vim-autoformat'
call plug#end()

"---------vundle------------------
" set encoding=utf-8
" filetype off                  " required
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" "Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'skywind3000/asyncrun.vim'
" "Plugin 'kien/ctrlp.vim'
" Plugin 'haya14busa/incsearch.vim'
" Plugin 'haya14busa/incsearch-fuzzy.vim'
" Plugin 'haya14busa/vim-asterisk'
" Plugin 'SirVer/ultisnips'
" Plugin 'easymotion/vim-easymotion'
" Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-surround'
" Plugin 'dhruvasagar/vim-table-mode'
" Plugin 'vimwiki/vimwiki'
" Plugin 'vim-airline/vim-airline'
" Plugin 'luochen1990/rainbow'
" Plugin 'taglist.vim'
" Plugin 'mphe/grayout.vim'
" Plugin 'junegunn/fzf.vim'
" Plugin 'tpope/vim-obsession'
" Plugin 't9md/vim-choosewin'
" Plugin 'lervag/vimtex'
" Plugin 'ludovicchabant/vim-gutentags'
" Plugin 'mhinz/vim-signify'
" Plugin 'vim-scripts/Tabmerge'
" Plugin 'mkitt/tabline.vim'
" Plugin 'tpope/vim-vinegar'
" Plugin 'pbogut/fzf-mru.vim'
" Plugin 'rking/ag.vim'
" Plugin 'kshenoy/vim-signature'
" Plugin 'vifm/vifm.vim'
" Plugin 'rhysd/vim-clang-format'
" "Plugin 'roxma/vim-tmux-clipboard'
" "Plugin 'tpope/vim-eunuch'
" "Plugin 'vim-latex/vim-latex'
" "Plugin 'Chiel92/vim-autoformat'
" call vundle#end()            " required
" filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on

"------- basic---------------------
set ignorecase
set smartcase
set nu
set relativenumber
colorscheme molokai
set tabstop=4
set shiftwidth=4
set expandtab
let mapleader = ","
set backupdir=$HOME/vimbackupfiles//,.,
set hlsearch
set wildmode=longest:full,full
set wildmenu
set fileencodings=utf-8,cp936,ucs-bom
set wildignorecase
set wmh=0
set wmw=0
set laststatus=2
set statusline=%f "tail of the filename
set undofile
set switchbuf=useopen,usetab
set autoread
"---------------------- set the menu & the message to English----------
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

nmap (( 0f(vi(

"--------------edit vimrc------------------
nmap <F12> :vs $MYVIMRC<cr>

"--------------auto makeSession------------------
"autocmd VimLeave * call whx#autoMKSession#AutoMKS()
"nmap <silent> <leader>s :call whx#autoMKSession#AutoMKS()<cr>

"--------------layout------------------
nmap <silent> <C-x> :resize 9999\|vert resize 9999<cr>
command MM resize | vert resize
nmap <silent> <C-c> <C-w>=
command CC normal <C-w>=

"--------------gui------------------
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'm' <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

set guioptions+=c
set guioptions-=e
"--------------navigation------------------
"imap <A-h> <ESC>ha
"imap <A-j> <ESC>gja
"imap <A-k> <ESC>gka
"imap <A-l> <ESC>la
"imap <C-h> <ESC>bi
"imap <C-l> <ESC>lwi
"imap <C-b> <ESC><S-i>
"imap <C-e> <ESC><S-a>
"--------------Key mapping------------------
if has("unix")
	map  <C-Insert> "+y 
endif

"--------------coding------------------
map <S-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+fq .

"--------------supertab------------------
if has("win32")
	let g:SuperTabDefaultCompletionType = "context"
endif

"--------------cscope------------------
if has("win32")
	set csprg=mlcscope
	set cscopequickfix=s-,c-,d-,i-,t-,e-,g-,f-
	set ic
endif

"--------------------pathogen----------------------
"call pathogen#infect()

"----------------------vimtex------------------------
if has("win32")
elseif has("macunix")
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_fold_enabled = 0 "So large files can open more easily
elseif has("unix")
endif
let g:vimtex_latexmk_continuous = 0
""---------------------vim latex -------------------------
"let g:myTexCustomFlag = 0
"" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
"
"" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
"" can be called correctly.
"set shellslash
"
"" IMPORTANT: grep will sometimes skip displaying the file name if you
"" search in a singe file. This will confuse Latex-Suite. Set your grep
"" program to always generate a file-name.
if has("win32")
	set grepprg=findstr\ /n\ /S\ $* 
elseif has("unix")
	set grepprg=grep\ -nrH\ --exclude=Session.vim\ --exclude=viminfo\ $*
endif

command WW vimgrep <cword> % | cw

"
"" OPTIONAL: This enables automatic indentation as you type.  
"filetype indent on
"
"" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'
"let g:Tex_DefaultTargetFormat = 'pdf'
"if has("win32")
"	let g:Tex_ViewRule_pdf =  '"d:\Program Files\SumatraPDF\SumatraPDF.exe" -reuse-instance'
"elseif has("unix")
"	let g:Tex_ViewRule_pdf =  'evince'
"	let g:Tex_GotoError=0
"endif
 
"--------------------- clang_completion-------------------------
if has("win32")
	let g:clang_exec = 'd:\Program Files\LLVM\bin\clang.exe'
	let g:clang_user_options = '2> NUL || exit 0'
	let g:clang_library_path = 'd:\Program Files\LLVM\bin'

	"let g:clang_use_library = 1
	"let g:clang_hl_errors=1
	"let g:clang_complete_copen = 1
	let g:clang_complete_copen=1
	let g:clang_periodic_quickfix=1
	let g:clang_snippets=1
	let g:clang_close_preview=1
	let g:clang_use_library=1
	let g:clang_user_options='-stdlib=libstdc++ -std=c++11 -I/usr/include'
elseif has("unix")
endif
"---------------------YouCompleteMe-------------------------
"if has("unix")

"    let g:ycm_python_binary_path="/usr/bin/python2.7"
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_max_diagnostics_to_disply = 0
	nnoremap <c-k> :YcmCompleter GoToDefinitionElseDeclaration<CR>
	"g:ycm_global_ycm_extra_conf = '/home/...'   "put the default .ycm_extra_conf.py
	let g:ycm_autoclose_preview_window_after_completion = 1 "for preview window
	"let g:ycm_autoclose_preview_window_after_insertion = 1 "for preview window
    let g:ycm_max_diagnostics_to_display=0
	"
	"disable preview window
	"set completeopt-=preview 
	"g:ycm_add_preview_to_completeopt = 0
	let g:ycm_filetype_blacklist = {
	        \ 'tagbar' : 1,
	        \ 'qf' : 1,
	        \ 'notes' : 1,
	        \ 'markdown' : 1,
	        \ 'unite' : 1,
	        \ 'vimwiki' : 1,
	        \ 'pandoc' : 1
	        \}
	        "\ 'text' : 1,
	let g:ycm_filetype_specific_completion_to_disable = {
			\ 'text' : 1,
			\}
	let g:ycm_seed_identifiers_with_syntax = 1  "for keyword
"	let g:ycm_path_to_python_interpreter='/System/Library/Frameworks/Python.framework/Versions/2.7/bin/python'
  let g:ycm_key_invoke_completion = '<C-k>'
  let g:ycm_always_populate_location_list = 1

"endif

  nmap <leader>g :YcmCompleter GoToSymbol 

"---------------------sticky notes-------------------------
"if has("win32")
"	map <silent> <leader>k :so $HOME\tempNotes.vim<cr>
"endif
"--------------------- ctrlp-------------------------
"let g:ctrlp_map = '<leader>k'
"let g:ctrlp_by_filename = 0
"let g:ctrlp_regexp = 1
"let g:ctrlp_cmd = 'CtrlPMRUFiles'
"let g:ctrlp_mruf_case_sensitive = 0
"nmap <leader>b :CtrlPBuffer<cr>
"nmap <leader>f :CtrlP<cr>
"let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:100,results:150'
"let g:ctrlp_extensions = ['dir']

"--------------------- fzf -------------------------
nmap <leader>k :FZFMru<cr>
nmap <leader>b :Buffers!<cr>
nmap <leader>h :History:!<cr>
nmap <leader>f :FZF! 
nmap <leader>l :BLines!<cr>
nmap <leader>m :Marks!<cr>
nmap <leader>T :BTags!<cr>
nmap :: :Commands!<cr>
imap <c-x><c-l> <plug>(fzf-complete-line)
"
"--------------------- netrw-------------------------
let g:netrw_altv          = 1
let g:netrw_fastbrowse    = 2
let g:netrw_keepdir       = 0
let g:netrw_liststyle     = 0 "one file per line
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' "show nu

"--------------------- mingw-------------------------
if has("win32")
	set makeprg=mingw32-make
endif
"--------------------- pyclewn-------------------------
nmap <F9> :Cbreak
nmap <F10> :Cnext<cr>
nmap <F11> :Cstep<cr>
nmap <F5> :Ccontinue<cr>
nmap <F8> :Cwatch

"--------------------- vimdiff-------------------------
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

"--------------------- vimwiki-------------------------
if has("win32")
let wiki_2 = {}
let wiki_2.path = 'e:\Codes\SIRFS\SIRFS_notes_wiki\'

let wiki_3 = {}
let wiki_3.path = 'e:\Codes\intrinsic_image\nonlocal_texture_constraints\notes_wiki'


let g:vimwiki_list = [{},wiki_2,wiki_3]

elseif has("unix")

let wiki_1 = {}
let wiki_1.path = '~/.vim/vimviki_data'

"let wiki_2 = {}
"let wiki_2.path = '/Users/wanghaoxing/vimwiki/vimwiki1'

let g:vimwiki_list = [wiki_1]
"let g:vimwiki_list = [wiki_1,wiki_2]
endif

"--------------------- xclip -------------------------
"if has("win32")
"	nmap <leader>j :!echo %:p:h \| xclip -sel c
"endif
"--------------------- temp-------------------------
map <F7> :!clang

"-------------------- env path -------------------------------
if has("win32")
elseif has("unix")
	let $LD_LIBRARY_PATH="/usr/local/lib"
endif
"---------------------------Taglist------------------------
let Tlist_Use_Right_Window = 1
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_GainFocus_On_ToggleOpen= 1
" nmap <leader>t :TlistOpen<cr>
" nmap <leader>T :TlistClose<cr>
" set statusline=%([%{Tlist_Get_Tagname_By_Line()}][%f]%)

map <silent> [[ :TlistOpen<cr><cr>:TlistClose<cr>
map <silent> ]] :TlistOpen<cr><cr>:TlistClose<cr>/{<cr>:nohlsearch<cr>%

"---------------------------closing------------------------
inoremap {}      {}<++><Left><Left><Left><Left><Left>
inoremap []      []<++><Left><Left><Left><Left><Left>
inoremap ()      ()<++><Left><Left><Left><Left><Left>
inoremap <>      <><++><Left><Left><Left><Left><Left>
inoremap ''      ''<++><Left><Left><Left><Left><Left>
inoremap ""      ""<++><Left><Left><Left><Left><Left>


imap <C-j> <ESC>/<++><cr>4s<ESC>:noh<ESC>a

"---------------------------only for first time------------------------
" if has("win32")
" 	if !isdirectory($HOME."/deleting")
" 		call mkdir($HOME."/deleting")
" 	endif
" 	if !isdirectory($HOME."/vimbackupfiles")
" 		call mkdir($HOME."/vimbackupfiles")
" 	endif
" 	if !filereadable($HOME.'\tempNotes.txt')
" 		execute "e ".$HOME.'\tempNotes.txt'
" 		execute "mks! ". $HOME.'\tempNotes.vim'
" 		execute "w ".$HOME.'\tempNotes.txt'
" 		execute "new ". $HOME.'\tempNotesx.vim'
" 		execute "normal ddIset foldmethod=marker"
" 		execute "wq ". $HOME.'\tempNotesx.vim'
" 	endif
" 	let g:Tex_ViewRule_pdf = '"d:\Program Files\SumatraPDF\SumatraPDF.exe" -reuse-instance -inverse-search "d:\Program Files\Vim\vim73\gvim.exe -c \":RemoteOpen +\%l \%f\""'
" endif
"
map Y "*y$
map YY 3GwY<C-o>

"----------------- for fuzzy search----------
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map /// <Plug>(incsearch-fuzzy-/)
"map z? <Plug>(incsearch-fuzzy-?)
map g// <Plug>(incsearch-fuzzy-stay)

"----------------- for easy motion----------
"g:EasyMotion_do_shade = 0
let g:EasyMotion_enter_jump_first = 1
map // <Plug>(easymotion-sn)
"map // <Plug>(easymotion-s2)
"map /1 <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1
map <leader>e <Plug>(easymotion-bd-w)
"map f M<Plug>(easymotion-f)
"map F <Plug>(easymotion-F)
"map t <Plug>(easymotion-t)
"map T <Plug>(easymotion-T)
"map w <Plug>(easymotion-w)
"map W <Plug>(easymotion-W)
"map b <Plug>(easymotion-b)
"map B <Plug>(easymotion-B)
"map e <Plug>(easymotion-e)
"map E <Plug>(easymotion-E)
"map    <Plug>(easymotion-ge)
"map    <Plug>(easymotion-gE)
"map    <Plug>(easymotion-j) 
"map    <Plug>(easymotion-k) 
"map    <Plug>(easymotion-n) 
"map    <Plug>(easymotion-N) 
"map t H13j<Plug>(easymotion-s)
"map f L13k<Plug>(easymotion-s)
"----------------- vim-asterisk----------
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
"map g*  <Plug>(asterisk-g*)
"map g#  <Plug>(asterisk-g#)
"map z*  <Plug>(asterisk-z*)
"map gz* <Plug>(asterisk-gz*)
"map z#  <Plug>(asterisk-z#)
"map gz# <Plug>(asterisk-gz#)

"-------asyrun--------------------
let g:asyncrun_bell=1 
map <leader>! :AsyncRun 
"map <leader>1 :AsyncRun 

"--------for rainbow-------
let g:rainbow_active = 0

"--------autoformat----
let g:formatters_cpp = ['astyle_cpp']
let g:formatters_c = ['astyle_cpp']

"--------ultisnip--------
"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"--------for command -------
nmap <F6> :!astyle %<cr>

" ------for mulitple copy
map <leader><leader>y "Ay
map <leader>ay "ay
"vmap <leader>as "by"ay:let @a.="/"<cr>
vmap <silent> <leader>as "dy:let @c="/<c-r>d/"<cr>:let @a="<c-r>c<c-r>b/gc"<cr>
vmap <silent> <leader>s "by:let @a="<c-r>c<c-r>b/gc"<cr>
"----------yank and paste by clipbord
map <leader>p "+p
map <leader>y "+y

"---------airline--------
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'

let g:airline_section_a = '%{Tlist_Get_Tagname_By_Line()}'
let g:airline_section_x = ''
let g:airline_section_y = '%{gutentags#statusline()}'
let g:airline_section_z = '%{ObsessionStatus()}'

"----------choosewin-------------
"nmap <leader>j <Plug>(choosewin)
nmap <leader>q <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

"-------------grayout--------------------
if has("macunix")
    " do nothing, use the default
elseif has("unix")
    let g:grayout_cmd_line_copy = '/home/whx/software/llvm/clang+llvm-7.0.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang -x c++ -w -P -E -'
    let g:grayout_cmd_line = g:grayout_cmd_line_copy
endif

"------------gutentags---------------
"let g:gutentags_cache_dir='~/tag_cache'
let g:gutentags_exclude_filetypes=['bin', 'build', 'cmake', 'depend', 'maplab_package', 'org', 'txt', 'html', 'js', 'f', 'submodules', 'swp', 'swo']
"let g:gutentags_define_advanced_commands=1
"let g:gutentags_enabled=0
let g:gutentags_add_default_project_roots=0
let g:gutentags_project_root=['.addtags']
nmap gA :exe "tag ".expand('%:t:r').".
""--------nerdtree-----------
"nmap <leader>a :NERDTreeFind<cr>
"nmap <leader>z :NERDTreeCWD<cr>
"nmap <leader>v :NERDTreeToggle<cr>

"--------autocommand--------
 autocmd BufRead,BufWritePost * if &ft == 'cpp' | TlistUpdate  | endif

"-----------------
map :wo :windo 
map  <silent> :yy :let @+=expand("%:p")<CR>
map :ww :AsyncRun wmctrl -x -a  

"----terminal-----------
"
function OpenTmuxTerminal()
    let l:tmux_buf_id=term_start('tmux a', {'term_rows':60})
    call term_wait(l:tmux_buf_id, 300)
    let l:tmux_status=term_getstatus(l:tmux_buf_id)
    if l:tmux_status == 'finished'
       execute 'bdelete '..l:tmux_buf_id
       call term_start('tmux', {'term_rows':60})
    endif
endfunction

tmap <C-Q> <C-W>:q!<cr>
tmap <leader><leader>z <C-W>:q!<cr>
tmap <C-n> <C-W>N
map <leader>v "vy
tmap <C-v> <C-W>"
tmap <leader>: <C-W>:
"map <leader>z :terminal ++rows=100 ++cols=200 tmux a<cr>
map <silent> <leader>z :call OpenTmuxTerminal()<cr>
map <leader><leader>z :!tmux new-window -c %:p:h<cr>
"map <leader><leader>z :terminal ++rows=100 ++cols=200<cr>
"tmap <C-j> <C-W>:exe "normal \<Plug>(choosewin)"
""--------vimspector
"let g:vimspector_enable_mappings = 'HUMAN'
"------------
map <silent>:ccd :cd %:p:h<cr>
map <leader><leader>g :call cursor(

" "-----------vifm----------
" let g:vifm_embed_term=0
" let g:vifm_term='xterm -geometry 640X480 -fa "Monospace" -fs 11 -e'
" nmap <leader>l :e \| Vifm<cr>
" nmap <leader><leader>l :Vifm<cr>

""add to .bashrc
"alias gvim='/home/wanghaox/install/vim/bin/gvim'
"alias gvimr='/home/wanghaox/install/vim/bin/gvim --remote-tab'
"alias rgvim='/home/wanghaox/install/vim/bin/gvim;exit'
"alias gvimt='/home/wanghaox/install/vim/bin/gvim --remote-tab +"execute \"bdelete! \".term_list()[0]"'
"alias vimt='vim --remote-tab'
"alias vims='vim --servername VIM'
"alias vimm='vim -c FZFMru'
"alias pbcopy='xclip -selection clipbroad'
"alias pbpaste='xclip -selection clipbroad -o'
"alias tmc='tmux save-buffer - | xclip -i -selection clipbroad'
"alias rchrome='google-chrome;exit'
"alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
"alias x2x0='x2x -to :0'
"alias x2x0s='x2x -to :0 -south'
"alias x2x0n='x2x -to :0 -north'
"alias x2x0e='x2x -to :0 -east'
"alias x2x0w='x2x -to :0 -west'

""ubuntu desktop launch
"[Desktop Entry]
"Exec=/home/whx/code/vim/install_dir/bin/gvim
"Type=Application
"Name=gvim
"Icon=gvim

"----------------rifle.conf---------------
"mime ^text,  label editor = gvim --remote-tab +"execute \"bdelete! \".term_list()[0] " "$@"
"
"!mime ^text, label editor, ext xml|csv|tex|py|pl|rb|js|sh|php = gvim --remote-tab +"execute \"bdelete! \".term_list()[0] " "$@"
"

"
"nmap <silent> <leader>s :source ~/Session.vim<cr>
"autocmd VimEnter * source ~/Session.vim 
"label editor, !mime ^text, !ext xml|csv|tex|py|pl|rb|js|sh|php  = gvim --remote-tab +"execute \"bdelete! \".term_list()[0] " "$@"
