#### Vim configuration settings for Go and others languages.

![preview pic](https://github.com/jimmy-go/vim4jim/blob/master/preview.png?1)
vim4jim, htop and lsof on [iTerm2](http://iterm2.com) - Solarized dark theme.

####Installation (tested and working on OS X Yosemite, be careful with other platforms):

a) First clone the repo:
```
git clone https://github.com/jimmy-go/vim4jim ~/.vim4jim
```

b) Install with:
```
# will install YCM with support for all languages.
sh ~/.vim4jim/install.sh
```

You can add an alias: ```alias vim4jim='vim -u ~/.vim4jim/vimgo.rc'```

c) Vim plugin install:
```
#inside vim
:PluginInstall
```

d) Go binaries install:
```
#inside vim
:GoInstallBinaries
```

Done!

Notes:
```
#Ubuntu

# Install Go:
wget https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.7.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

# Install nodejs and npm
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Rust
curl -sSf https://static.rust-lang.org/rustup.sh | sh

# Install cmake, python, build-essential
sudo apt-get install build-essential cmake python-dev python3-dev

# Install mono
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
sudo apt-get install mono-complete
```

#### Credits

* Go Authors for official vim plugins
* Gocode, Godef, Golint, Guru, Goimports, Gotags, Errcheck projects and
  authors of those projects.
* [Contributors](https://github.com/fatih/vim-go/graphs/contributors) of vim-go
* [http://farazdagi.com/blog/2015/vim-as-golang-ide/](http://farazdagi.com/blog/2015/vim-as-golang-ide/)
* [Solarized theme](http://ethanschoonover.com/solarized)

#### License

The MIT License (MIT)

Copyright (c) 2016 Angel Del Castillo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
