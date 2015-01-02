" ----------------------------------------------------------------------------
"  map设置
" ----------------------------------------------------------------------------
" 任何时候都是使用*noremap的形式，以非递归形式

" map
map j gj
map k gk

" normal, 多用,作为开始
" 全选
nnoremap ,, ggVG

nnoremap H 0
nnoremap L $

" 分屏设置
nnoremap ,v :vs %<CR>
nnoremap ,s :sp %<CR>
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
nnoremap ,e :e $MYVIMRC<CR>

" 快速编辑blog
nnoremap ,b :e /home/svitter/svtter.github.io/source/_posts/<CR>
nnoremap ,d :NERDTreeToggle<CR>

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

