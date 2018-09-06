# gomake
Golang project manager

## Install
```bash
curl https://raw.githubusercontent.com/verystar/gomake/master/install.sh | sh
```

## Usage

```bash
make //base GOPATH go build main.go to ./bin and softlink to current path
make mod //base Go Module build
make version //show current app version
make back //back app version to prev version
make test //go test
make list //show app all version list
make publish //rsync app code to server
make upgrade //upgrade gomake
```