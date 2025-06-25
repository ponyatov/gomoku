.PHONY: watch
watch: $(G)
	wgo run $<

.PHONY: all
all: bin/$(APP)
	file $< ; size $< ; ldd $<
bin/$(APP): $(G)
	go build -o $@ $<
