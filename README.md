update for ubuntu20

## 包含的插件
1. YCM补全你懂的；
2. markdown在网页中的实时预览以及数学公式的支持；
3. 快速注释，批量注释，各种注释；
4. 配色，语法高亮等；
5. 在退出插入模式时自动切换输入法；
6. 快速格式化代码；
7. ctags跳转。

## 依赖
```
# ctags要求
sudo apt install exuberant-ctags
# vim使能系统粘贴板功能
sudo apt-add-repository ppa:jonathonf/vim
sudo apt-update
sudo apt remove vim vim-common vim-runtime vim-tiny
sudo apt install vim-gnome
# 自动格式化
sudo apt install clang-format
```

## 操作步骤
1. 将`.vimrc`拷贝到用户目录下;
2. `mkdir -p .vim/bundle`
3. `cd .vim/bundle`
4. `git clone https://github.com/VundleVim/Vundle.vim`
5. `git clone https://github.com/ycm-core/YouCompleteMe`
6. `cd YouCompleteMe`
7. sudo apt-get install python3-dev
8. `git submodule update --init --recursive`
9. `python3 install.py --clangd-completer`
10. `vim +PluginInstall +"call mkdp#util#install()" +qall`
