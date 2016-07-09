#### Vim configuration settings for Go and others languages.

#####Installation (working on os x Yosemite, be careful with other platforms):

a) First clone the repo:
```
git clone https://github.com/jimmy-go/vim4jim ~/.vim4jim
```

b) Install with:
```
sh ~/.vim4jim/install.sh
```

Now test your installation with: ```vim -u ~/.vim4jim/rc.go```

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

## Credits

* Go Authors for official vim plugins
* Gocode, Godef, Golint, Guru, Goimports, Gotags, Errcheck projects and
  authors of those projects.
* [Contributors](https://github.com/fatih/vim-go/graphs/contributors) of vim-go
* http://farazdagi.com/blog/2015/vim-as-golang-ide/

## License

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
