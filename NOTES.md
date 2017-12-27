
### Ubuntu

##### Install Go:
```
wget https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.7.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
```

##### Install nodejs and npm
```
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
```

##### Install Rust
```
curl -sSf https://static.rust-lang.org/rustup.sh | sh
```

##### Install cmake, python, build-essential
```
sudo apt-get install build-essential cmake python-dev python3-dev
```

##### Install mono
```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
sudo apt-get install mono-complete
```

