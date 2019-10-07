" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'scrooloose/syntastic'
Plug 'wincent/command-t'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" PLUGIN SETTINGS 
" seoul256
let g:seoul256_background = 254
colo seoul256

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" hotkey for Goyo-mode
map <F12> :Goyo \| set linebreak<CR>

" vim-airline
let g:airline_theme='bubblegum'
" END

" MY SETTINGS FOR VIM
set number
set lines=35 columns=120
syntax enable

"The width of a TAB is set to 4
set tabstop=4
set shiftwidth=4
set softtabstop=4
" END
