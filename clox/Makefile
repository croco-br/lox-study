COMPILER=gcc
SRC_DIR=src
BUILD_DIR=bin

.PHONY: all clean

all: build

build: $(BUILD_DIR)/clox

$(BUILD_DIR)/clox: $(wildcard $(SRC_DIR)/*.c)
	mkdir -p $(BUILD_DIR)
	$(COMPILER) $(wildcard $(SRC_DIR)/*.c) -o $@

clean:
	rm -rf $(BUILD_DIR)

run:
	./$(BUILD_DIR)/clox