" Vim global plugin for mappings
" Last Change: 
" Maintainer: svtter <svtter@qq.com>
" License: 



" ----------------------------------------------------------------------------
"  map设置
" ----------------------------------------------------------------------------
" 任何时候都是使用*noremap的形式，以非递归形式

" NERDtree 目录
nnoremap ,d :NERDTreeToggle<CR>

" map
map j gj
map k gk

" Ctrl map
inoremap <C-z> <Esc>uA

" normal, 多用,作为开始
" 全选
nnoremap ,a ggVG

" nnoremap H 0
" nnoremap L $

" 分屏设置
nnoremap ,v :vs %<CR>
nnoremap ,s :sp %<CR>

" 存储设置
nnoremap ,w :w<CR>
nnoremap ,q :q<CR>

" 快速添加成对
nnoremap ," viw<esc>a"<esc>hbi"<esc>lel
nnoremap ,' viw<esc>a'<esc>hbi'<esc>lel
nnoremap ,( viw<esc>a)<esc>hbi(<esc>lel
nnoremap ,[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap ,o i<CR><Esc>

" 括号
nnoremap ,cc %
nnoremap ,cr d%
nnoremap ,rl :so %<CR>

" 快速编辑vimrc
nnoremap ,ee :e $MYVIMRC<CR>
nnoremap ,ev :e ~/.vim/bundle<CR>

" 因为对ls -color=auto 支持不佳，所以采用bash（我这里bash默认是不带-color的)
nnoremap ,ba :ConqueTerm bash<CR>

" 快速编辑blog
nnoremap ,bl :e /home/svitter/svtter.github.io/source/_posts/<CR>

" 用于缓存区的快速切换, t键
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


" 强迫不可用模式
inoremap <Esc> <nop>
inoremap ii <ESC>

" Movement:
" 编辑函数参数
onoremap in( :<c-u>normal! f(vi(<cr>

"  end

