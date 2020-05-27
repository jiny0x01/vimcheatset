set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set number
set ruler
set title
set wrap
set cursorline
set background=dark "글씨색에 영향줌
set linebreak
set showmatch
set guicursor= "터미네이터 호환
set mouse=r
set laststatus=2
if !has('gui_running')
    set t_Co=256
endif

:colorscheme  dogrun
let g:promptline_theme = 'dogrun'
let g:lightline = {
  \ 'colorscheme': 'dogrun',
  \ }
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set termguicolors
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
 call plug#begin('~/.vim/plugged')

Plug 'wadackel/vim-dogrun'
"
" " Make sure you use single quotes
"
"" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
"
"" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
 
Plug 'tpope/vim-fireplace', { 'for': 'clojure'  }
 
" Using a non-master branch
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"
"" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim'  }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
 
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug 'itchyny/lightline.vim'
 
Plug 'airblade/vim-gitgutter' "추가,삭제,변경내역
Plug 'tpope/vim-fugitive' "깃 연동
 
Plug 'scrooloose/syntastic' "문법 체크
Plug 'Lokaltog/vim-easymotion' "커서이동
 
Plug 'scrooloose/nerdcommenter' "주석
Plug 'edkolev/promptline.vim' "쉘프롬프트
 
Plug 'vim-scripts/vcscommand.vim' "소스 버전 컨트롤
"먼지
Plug 'majutsushi/tagbar'
 
Plug 'xuhdev/SingleCompile'
 
Plug 'terryma/vim-multiple-cursors'
"위까지 모름
Plug 'jiangmiao/auto-pairs' "짝맞추기
Plug 'vim-scripts/taglist.vim'
 
Plug 'Yggdroot/indentLine' "들여쓰기 세로줄 라인
Plug 'mhinz/vim-signify' "버전 관리 파일 상태표시
 
Plug 'pangloss/vim-simplefold' "코드접기
Plug 'peterrincker/vim-argumentative' "함수 인자 위치변경
 
Plug 'tommcdo/vim-lion' "라인정렬
Plug 'dyng/ctrlsf.vim' "여러 파일 동시에 수정
 
Plug 'schickling/vim-bufonly' "현재 버퍼뺴고 모든 버퍼 삭제
Plug 'sjl/gundo.vim' "수정 되돌리기 트리
 
Plug 'andrewradev/sideways.vim' "단어 좌우 이동 ,로 분리된거
Plug 'octol/vim-cpp-enhanced-highlight'
 
Plug 'iamcco/markdown-preview.nvim'
 
"
call plug#end()
"key map setting
nmap <F3> :NERDTreeToggle<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
 
"받은거
"명령모드에서 키가 안먹힘
"C++ highlighiting 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1 "켜면 가끔 키워드 하이라이팅 안됌
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
 
"change parameter position
nnoremap <c-a> :SidewaysLeft<cr>
nnoremap <c-s> :SidewaysRight<cr>
 
"c++11이상 문법을 쓰고싶으면 .vim/plugged/SingleCompile/autoload/SingleCompile/templates에
"cpp.vim의 81번째줄에 컴파일 옵션 있음 거기서 -g -o $(yourfile)이런식으로 있음. -g뒤에 -std=c++17 붙여주면 된다.
nmap<F10> :SingleCompileRun<cr> "F10누르면 컴파일후 실행, 누르기전에 저장해야함
nmap<F9> :SingleCompile<cr>  "F9누르면 컴파일 
 
let g:Tlist_Use_Right_Window = 1
nnoremap <silent> <F4> :TlistToggle<Cr>
 
