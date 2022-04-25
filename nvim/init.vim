call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'dracula/vim'

  " Language Client
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  " File Explorer with Icons
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " add / remove comments
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
call plug#end()

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" https://learnvimscriptthehardway.stevelosh.com/chapters/06.html
let mapleader = "-"

" Theme
" syntax enable
" colorscheme dracula

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" requires silversearcher-ag
" used to ignore gitignore files
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" open new split panes to right and below
set splitright
set splitbelow
set number relativenumber
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" work around escape key j and k will exit insert mode. 
inoremap kj <Esc> ^`
" lets you quickly open init.vim for editing!
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" Unmap the arrow keys to force hjkl (https://vi.stackexchange.com/a/5854)
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>


" switch marks to make lowercase global https://unix.stackexchange.com/questions/154845/reverse-global-and-local-marks-in-vi-vim
nnoremap ma mA
nnoremap mb mB
nnoremap mc mC
nnoremap md mD
nnoremap me mE
nnoremap mf mF
nnoremap mg mG
nnoremap mh mH
nnoremap `a `A
nnoremap 'a 'A
nnoremap `b `B
nnoremap 'b 'B
nnoremap `c `C
nnoremap 'c 'C
nnoremap `d `D
nnoremap 'd 'D
nnoremap `e `E
nnoremap 'e 'E
nnoremap `f `F
nnoremap 'f 'F
nnoremap `g `G
nnoremap 'g 'G
nnoremap `h `H
nnoremap 'h 'H

" Don't let deletes clobber what was yanked!! Put deletes into the d register. https://stackoverflow.com/a/60119781/494635
nnoremap d "dd           "send latest delete to d register
nnoremap D "dD           "send latest delete to d register 
nnoremap dd "ddd         "send latest delete to d register
nnoremap x "_x           "send char deletes to black hole, not worth saving
nnoremap <leader>p "dp   "paste what was deleted
nnoremap <leader>P "dP   "paste what was deleted

