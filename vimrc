call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'dracula/vim'

  " Language Client
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'dhruvasagar/vim-zoom'

  " File Explorer with Icons
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " add / remove comments
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'

  " rust stuff from https://blog.logrocket.com/configuring-vim-rust-development/. His config is https://github.com/zupzup/dotfiles-linux/blob/main/.vimrc
  Plug 'rust-lang/rust.vim'
  " coc - C-space to suggest, C-y to accept
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'dense-analysis/ale'

  
call plug#end()
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
" This might need to change https://stackoverflow.com/a/72341811/494635
let g:coc_node_path = '/home/damien/.nvm/versions/node/v16.14.2/bin/node'
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
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


" zooming windows https://stackoverflow.com/a/60639802/494635
" https://tuckerchapman.com/2018/06/16/how-to-use-the-vim-leader-key/
function! ToggleZoom(zoom)
  if exists("t:restore_zoom") && (a:zoom == v:true || t:restore_zoom.win != winnr())
      exec t:restore_zoom.cmd
      unlet t:restore_zoom
  elseif a:zoom
      let t:restore_zoom = { 'win': winnr(), 'cmd': winrestcmd() }
      exec "normal \<C-W>\|\<C-W>_"
  endif
endfunction

augroup restorezoom
    au WinEnter * silent! :call ToggleZoom(v:false)
augroup END
nnoremap <silent> <Leader>+ :call ToggleZoom(v:true)<CR>
