.PHONY: go
go: $(GO)
	$(GO) version

GO_SRC = go-$(GO_VER)
GO_GZ  = go$(GO_VER).linux-amd64.tar.gz
GO_URL = https://go.dev/dl/$(GO_GZ)

$(GO): $(DISTR)/go/$(GO_GZ)
	sudo tar -C /usr/local -xzf $<
	go install golang.org/x/tools/gopls@latest

GZ += $(DISTR)/go/$(GO_GZ)
$(DISTR)/go/$(GO_GZ):
	mkdir -p $(DISTR)/go
	$(CURL) $@ $(GO_URL)
