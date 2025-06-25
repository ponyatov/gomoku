.PHONY: all
all: bin/$(APP)
bin/$(APP): $(G)
	go build -o $@ $^
	file $@ ; size $@ ; ldd $@

.PHONY: watch
watch: $(G)
	wgo -file go.mon -file src/*.go go run .
