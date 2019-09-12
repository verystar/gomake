# gomake
Golang project manager

## Install
```bash
curl https://raw.githubusercontent.com/ilibs/gomake/master/install.sh | sh
```

## Usage

```bash
make //Go build on mod
make vendor //Go build on vendor
make version //show current app version
make back //back app version to prev version
make test //go test
make list //show app all version list
make publish //rsync app code to server
make upgrade //upgrade gomake
```

## Builder on vendor

If the program directory contains the vendor directory, When compiled, -mod=vendor is automatically added

```
go build -mod=vendor -o xxxx
```
