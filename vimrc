set background=dark
set ft=verilog
colorscheme desert
syn on
set autochdir
set guifont=Courier\ 12 " font secltion
set backspace=indent,eol,start " make back space work normally
set suffixesadd=.v,.pl,.txt,.log,.c,.cpp,.vhd,.vhdl,.sv,.s,.S
set ic
set nu
set sm "showmatch
set ru "ruler - current line no. and col no.
set sc " Show the command on status line.
"  searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync
" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,fork,begin
" spelling
if v:version >= 700
 " Enable spell check for text files
   autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif
map <C-S> :w!<CR>
imap <C-S> <Esc>:w!<CR>
map ;; :s:::g<Left><Left><Left>
map cd :set autochdir<CR>
map <silent> <S-Insert> "+p
imap <silent> <S-Insert> <Esc>"+pa
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>map <C-S> :w!<CR>
imap <C-S> <Esc>:w!<CR>
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
imap <C-q> <ESC>:E <CR>
map <C-q> <ESC>:E <CR>
map <C-r> <ESC>:e<CR>
map <C-e> <ESC>:tabnew % <CR>
vmap <C-a> ggVG
map <S-Left> <Esc>:tabprev<CR>
map <S-Right> <Esc>:tabnext<CR>
"" Vim-Plug installation
"if empty(glob('~/.vim/autoload/plug.vim'))
"  execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif
"" Vim-Plug configuration
"call plug#begin('~/.vim/plugged')
"Plug 'preservim/nerdtree'
"call plug#end()
"autocmd VimEnter * :Vexplore
