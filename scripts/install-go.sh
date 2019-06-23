#!/usr/bin/env bash

main() {
  check_gopath
  download_godeb
  install_go
  install_godeb
}

check_gopath() {
  if [ -z "$GOPATH" ]; then
    echo "WARNING: GOPATH is unset. Using default path of \$HOME/go"
    echo "Add the following to your .bashrc"
    echo "  export GOPATH=\"\$HOME/go\""
    echo "  export PATH=\"\$PATH:\$GOPATH/bin\""
    GOPATH=$HOME/go
  fi
}

# Return 0 if installed, otherwise, return 1.
godeb_installed() {
  if [ ! -f "$GOPATH/bin/godeb" ]; then
    return 1
  fi

  if [[ :$PATH: != *:"$GOPATH/bin":* ]]; then
    PATH="$PATH:$GOPATH/bin"
  fi

  return 0
}

download_godeb() {
  if godeb_installed; then
    return
  fi

  echo "Downloading godeb binary..."
  tarball="godeb-amd64.tar.gz"
  curl https://godeb.s3.amazonaws.com/$tarball -o $tarball
  tar -zxf $tarball
  export PATH=$PATH:$(pwd)
  rm ./$tarball
}

install_go() {
  # BUG: `godeb install` will install the oldest version of go
  # Specify the latest version as a workaround.
  # https://github.com/niemeyer/godeb/issues/42 [2019-06-23]
  version=$(godeb list | sort --reverse --version-sort | head -n 1)

  echo "Installing go $version..."
  godeb install $version
  rm -f ./go_*.deb*

  if ! godeb_installed; then
    rm -f ./godeb
  fi
}

install_godeb() {
  if godeb_installed; then
    return
  fi

  echo "Installing godeb..."
  go get gopkg.in/niemeyer/godeb.v1/cmd/godeb
}

main "$@"
