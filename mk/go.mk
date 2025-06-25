$(GO):
	sudo apt install -uy golang gopls npm
# go install golang.org/x/tools/gopls@latest

GO     = go-$(GO_VER)
GO_GZ  = go$(GO_VER).linux-amd64.tar.gz
GO_URL = https://go.dev/dl/$(GO_GZ)

GZ += $(DISTR)/go/$(GO_GZ)
$(DISTR)/go/$(GO_GZ):
	mkdir -p $(DISTR)/go
	$(CURL) $@ $(GO_URL)
