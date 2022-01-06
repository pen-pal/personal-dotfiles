set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell
set hlsearch
set smartcase
set gdefault
set ignorecase
set incsearch
set autoindent
set cindent
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set ruler
set undolevels=1000
set paste

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

execute pathogen#infect()
colorscheme koehler

set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font\ 11
set foldmethod=indent
set foldnestmax=5
set nofoldenable
set foldlevel=1

let g:airline_powerline_fonts = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:neocomplete#enable_at_startup = 1
let g:yaml_formatter_indent_collection=1
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree | wincmd p

set runtimepath^=~/.vim/bundle/ctrlp.vim
set ts=2
set sw=2

call pathogen#infect()
syntax on
filetype plugin indent on

"call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
"call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

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
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:NERDTreeShowIgnoredStatus = 1

let g:WebDevIconsUnicodeDecorateFolderNodes = 1

let g:terraform_align=1
let g:terraform_fmt_on_save=1
let g:airline_theme='simple'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f'

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

let g:VM_mouse_mappings = 1
let g:VM_maps = {}
let g:rustfmt_autosave = 1

let g:gitgutter_max_signs = 500
let g:gitgutter_max_signs = -1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}


" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END


" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END


" -------- fastfold settings --------
"  nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1

nmap <F8> :TagbarToggle<CR>

set nocompatible
filetype plugin on
syntax on

let g:airline_theme='angr'

let g:syntastic_java_checkers = []
let g:EclimFileTypeValidate = 0

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:webdevicons_enable_denite = 1
set encoding=UTF-8

"set mouse=a
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "<c-n>"

nmap <M-Right> :vertical resize +1<CR>
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>
nmap <M-n> :tab new <CR>

let g:choosewin_overlay_enable = 1
let g:promptline_theme = 'airline'

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"


let g:comfortable_motion_friction = 80.0
let g:comfortable_motion_air_drag = 2.0

"default g:NERDTreeMapToggleFilters key map is 'f', change it to some key else.
let g:NERDTreeMapToggleFilters="0"

"LineJump NERDTree key map
augroup LineJumpNerdTree
    autocmd BufEnter NERD_tree_\d\+ nnoremap <buffer> <nowait> <silent> f <ESC>:silent! call LineJumpSelectForward()<cr>
    autocmd BufEnter NERD_tree_\d\+ nnoremap <buffer> <nowait> <silent> ; <ESC>:silent! call LineJumpMoveForward()<cr>
    autocmd BufEnter NERD_tree_\d\+ nnoremap <buffer> <nowait> <silent> b <ESC>:silent! call LineJumpSelectBackward()<cr>
    autocmd BufEnter NERD_tree_\d\+ nnoremap <buffer> <nowait> <silent> , <ESC>:silent! call LineJumpMoveBackward()<cr>
    autocmd BufEnter NERD_tree_\d\+ nnoremap <buffer> <nowait> <silent> gh <ESC>:silent! call LineJumpMoveTop()<cr>
    autocmd BufEnter NERD_tree_\d\+ nnoremap <buffer> <nowait> <silent> gm <ESC>:silent! call LineJumpMoveMiddle()<cr>
    autocmd BufEnter NERD_tree_\d\+ nnoremap <buffer> <nowait> <silent> gl <ESC>:silent! call LineJumpMoveBottom()<cr>
augroup END

augroup LineJumpTagbar
    autocmd BufEnter __Tagbar__ nnoremap <buffer> <nowait> <silent> f <ESC>:silent! call LineJumpSelectForward()<cr>
    autocmd BufEnter __Tagbar__ nnoremap <buffer> <nowait> <silent> ; <ESC>:silent! call LineJumpMoveForward()<cr>
    autocmd BufEnter __Tagbar__ nnoremap <buffer> <nowait> <silent> b <ESC>:silent! call LineJumpSelectBackward()<cr>
    autocmd BufEnter __Tagbar__ nnoremap <buffer> <nowait> <silent> , <ESC>:silent! call LineJumpMoveBackward()<cr>
    autocmd BufEnter __Tagbar__ nnoremap <buffer> <nowait> <silent> gh <ESC>:silent! call LineJumpMoveTop()<cr>
    autocmd BufEnter __Tagbar__ nnoremap <buffer> <nowait> <silent> gm <ESC>:silent! call LineJumpMoveMiddle()<cr>
    autocmd BufEnter __Tagbar__ nnoremap <buffer> <nowait> <silent> gl <ESC>:silent! call LineJumpMoveBottom()<cr>
augroup END

let g:pymode_indent = 0



let g:magit_enabled=[01]
let g:magit_git_cmd="git" 
let g:magit_show_help=[01]
let g:magit_commit_title_limit=[0..300]
let g:magit_default_show_all_files=[012]
let g:magit_default_fold_level=[012]
let g:magit_auto_foldopen=[01]
let g:magit_default_sections = ['info', 'global_help', 'commit', 'staged', 'unstaged']
let g:magit_auto_close=[01]
let g:magit_refresh_gitgutter=[01]

inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>
inoremap <C-a> <esc>:wq!<cr>               " save and exit
nnoremap <C-a> :wq!<cr>
inoremap <C-n> <esc>:set paste<cr>
nnoremap <C-n> :set paste<cr>


filetype plugin on
"Uncomment to override defaults:
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_mermaid = 1
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_autoscroll = 0
let g:instant_markdown_port = 8888
let g:instant_markdown_python = 1


"vim markdown
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
