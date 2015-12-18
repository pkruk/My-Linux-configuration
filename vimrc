set shell=/bin/bash
set nocompatible
filetype off
"color jellybeans
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
set t_Co=256
execute pathogen#infect()


" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'AutoComplPop'
Plugin 'bling/vim-airline'

let g:solarized_termcolors=256


map <F2> :NERDTreeToggle<CR>
set number
set mouse=a
set exrc
syntax enable
set secure
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
let &path.="src/include,/usr/include/AL,"
set includeexpr=substitute(v:fname,'\\.','/','g')
set makeprg=make\ -C\ ../build\ -j9
nnoremap <F4> :make!<cr>
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
