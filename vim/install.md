# VIM 安装与配置说明

## 安装篇
### 源码安装 Vim

```shell
git clone git@github.com:vim/vim.git
```

```shell
cd vim/
```

```shell
./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp --enable-perlinterp --with-python-config-dir=/usr/lib/python2.7/config/ --enable-gui=gtk2 --enable-cscope --prefix=/usr
```

```shell
make && make install
```

###  CentOS Yum 方式安装 Vim
#### 通过依赖去安装 vim
***CentOS 默认只安装了 vi, vim 需要安装以下依赖才能使用,vim编辑器需要安装以下依赖***

``vim-minimal-7.4.160-6.el7_6.x86_64``
``vim-filesystem-7.4.160-6.el7_6.x86_64``
``vim-enhanced-7.4.160-6.el7_6.x86_64``

- 查看一下你本机已经存在的包，确认一下你的VIM是否已经安装
```shell
rpm -qa|grep vim
```

- 缺失则对应安装依赖，比如缺失 vim-enhanced
```shell
yum -y install vim-enhanced
```

#### 自动安装 vim
```shell
yum -y install vim
```

## 配置篇

- 下载配色主题
```shell
mkdir -p ~/.vim/colors && wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O ~/.vim/colors/molokai.vim
```

- 安装插件管理器
```shell
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

- 下载 nerdtree 插件
```shell
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
```

- 下载配置文件
```shell
curl -fLo ~/.vimrc https://raw.githubusercontent.com/csthink/tool/master/.vimrc
```
