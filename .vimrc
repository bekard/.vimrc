" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'scrooloose/syntastic'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'cocopon/iceberg.vim'
call plug#end()

" PLUGIN SETTINGS 
" seoul256
"let g:seoul256_background = 234
colo iceberg

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

function! ToggleSyntastic()
    for i in range(1, winnr('$'))
        let bnum = winbufnr(i)
        if getbufvar(bnum, '&buftype') == 'quickfix'
            lclose
            return
        endif
    endfor
    SyntasticCheck
endfunction
nnoremap <F7> :call ToggleSyntastic()<CR>

" hotkey for Goyo-mode
map <F12> :Goyo \| set linebreak<CR>

" vim-airline
let g:airline_theme='iceberg'
" END

" MY SETTINGS FOR VIM
set number
set lines=35 columns=120
syntax enable

"The width of a TAB is set to 4
set tabstop=4
set shiftwidth=4
set softtabstop=4

" shows tuped command
set showcmd

" Print buffers and choose one
:nnoremap <F5> :buffers<CR>:buffer<Space>

" auto completion of brackets
inoremap ' ''<left>
inoremap ` ``<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
" END
