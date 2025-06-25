.PHONY: all
all: $(BIN)/$(APP)
$(BIN)/$(APP): $(G) $(MK)
	cd src ; go build -o $@ .
	file $@ ; size $@ ; ldd $@

.PHONY: watch
watch: $(G)
	cd src ; wgo run . $(S)
