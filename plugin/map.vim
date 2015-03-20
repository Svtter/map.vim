" Vim global plugin for mappings
" Last Change: 
" Maintainer: svtter <svtter@qq.com>
" License: 



" ----------------------------------------------------------------------------
"  map设置
" ----------------------------------------------------------------------------
" 任何时候都是使用*noremap的形式，以非递归形式

let mapleader = ","

" NERDtree 目录<Leader> mru.vim
nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <Leader>mm :MRU<CR>

" Tab 快速删除本行
nnoremap <Tab> ddO

" 与J相反
nnoremap to i<CR><Esc>

" map
map j gj
map k gk

" For ACM
nnoremap <Leader>ii :vs input<CR>
nnoremap <Leader>io :vs ouput<CR>

" Ctrl map
inoremap <C-z> <Esc>uA
inoremap <C-l> <Right>

" normal<Leader> 多用,作为开始
" 全选
nnoremap <Leader>aa ggVG

" 复制到系统粘贴
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" nnoremap H 0
" nnoremap L $

" 分屏设置
nnoremap <Leader>v :vs %<CR>
nnoremap <Leader>s :sp %<CR>

" 存储设置
nnoremap <Leader>we :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" 快速添加成对
nnoremap <Leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <Leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <Leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <Leader>[ viw<esc>a]<esc>hbi[<esc>lel

" 括号
nnoremap <Leader>cc %
nnoremap <Leader>cr d%
nnoremap <Leader>rl :so %<CR>

" 快速编辑vimrc
nnoremap <Leader>ee :e $MYVIMRC<CR>
nnoremap <Leader>ev :e ~/.vim/bundle<CR>
nnoremap <Leader>em :e ~/.vim/bundle/map.vim/plugin/map.vim<CR>

" 因为对ls -color=auto 支持不佳，所以采用bash（我这里bash默认是不带-color的)
nnoremap <Leader>ba :ConqueTerm bash<CR>

" 快速编辑blog
nnoremap <Leader>bl :e /home/svitter/svtter.github.io/source/_posts/<CR>

" 用于缓存区的快速切换<Leader> t键
nnoremap tj :bn<CR>
nnoremap tk :bp<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :Toc<CR>

" 生成tags
noremap <F3> :execute '!ctags -R *'<CR>

" 常规模式下输入 cS 清除行尾空格
nnoremap cS :%s/\s\+$//g<CR>:noh<CR>

" 常规模式下输入 cM 清除行尾 ^M 符号
nnoremap cM :%s/\r$//g<CR>:noh<CR>

" space to :
" nnoremap <space> :

" 用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>


" 强迫不可用模式
inoremap <Esc> <nop>
inoremap df <ESC>

" Movement:
" 编辑函数参数
onoremap in( :<c-u>normal! f(vi(<cr>

" 插入模式下光标上下左右
inoremap <c-k> <Up>
inoremap <c-j> <Down>

" 在不使用 MiniBufExplorer 插件时也可用<C-k,j,h,l>切换到上下左右的窗口中去
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l


" Ctrl + B 插入模式下使用Home
" Ctrl + E 插入模式下使用End
" 暂时使用本义
inoremap <c-b> <Home>
inoremap <c-e> <End>

"  end

