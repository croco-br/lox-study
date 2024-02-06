SRC_DIR = com/craftinginterpreters/lox/
SOURCES = $(wildcard $(SRC_DIR)/*.java) $(wildcard $(SRC_DIR)/tool/*.java)
BUILD_DIR = build
GEN_DIR = generated
MAIN = com.craftinginterpreters.lox.Lox
AST = com.craftinginterpreters.lox.tool.GenerateAst
AST_PRINTER = com.craftinginterpreters.lox.AstPrinter

all: build

build:
	mkdir -p $(BUILD_DIR)
	mkdir -p $(GEN_DIR)
	javac -d build $(wildcard $(SRC_DIR)/*.java) $(wildcard $(SRC_DIR)/tool/*.java)
	
build_tools:
	mkdir -p $(BUILD_DIR)
	mkdir -p $(GEN_DIR)
	javac -d build $(wildcard $(SRC_DIR)/tool/*.java)

clean:
	rm -rf $(BUILD_DIR)
	rm -rf $(GEN_DIR)

run:
	java -cp $(BUILD_DIR) $(MAIN) $(FILE)

run_ast:
	java -cp $(BUILD_DIR) $(AST_PRINTER)

generate:
	mkdir -p $(BUILD_DIR)
	mkdir -p $(GEN_DIR)
	javac -d build $(wildcard $(SRC_DIR)/tool/*.java)
#java -cp $(BUILD_DIR) $(AST) $(GEN_DIR)
	java -cp $(BUILD_DIR) $(AST) $(SRC_DIR)

.PHONY: all build clean run
