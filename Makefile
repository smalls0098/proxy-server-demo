.PHONY: default
default:
	@echo "USAGE: make build-linux-amd64"

build-linux-amd64:
	GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -o ./bin/linux_amd64_proxy_server ./main.go