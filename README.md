### Setting up on a new environment

1) Clone dotvim.
```sh
$ git clone https://github.com/camroncade/vim-config.git
```

2) Rename vim-config folder
```sh
$ mv ~/vim-config ~/.vim
```

3) soft link vimrc
```sh   
$ ln -s ~/.vim/.vimrc ~/.vimrc
```
4) Seting up Vundle
```sh   
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

5) Installing the packages
open vim and execute `:BundleInstall`

License
----

MIT
