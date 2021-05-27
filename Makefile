test:
	go test -timeout 10m ./... -v

race:
	go test -race -timeout 30m ./... -v

lintci:
	golangci-lint run --config ./.golangci.yml

lintci-deps:
	rm -f $(GOPATH)/bin/golangci-lint
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(GOPATH)/bin v1.32.2

run:
	go run cmd/main.go
