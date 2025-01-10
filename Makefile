# 定义变量
LATEXMK     = latexmk
LATEXMK_OPTS = -xelatex -output-directory=$(BUILD_DIR) -aux-directory=$(BUILD_DIR) -interaction=nonstopmode -f
BUILD_DIR   = build
MAIN_FILE   = main
SUB_FILES   = $(wildcard contents/*.tex)

# 创建 build 目录
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# 编译主文件并生成 PDF
$(MAIN_FILE).pdf: $(MAIN_FILE).tex $(SUB_FILES) | $(BUILD_DIR)
	$(LATEXMK) $(LATEXMK_OPTS) $<
	mv -f $(BUILD_DIR)/$(MAIN_FILE).pdf ./  # 将最终生成的 PDF 移动到主目录

# 默认目标
all: $(MAIN_FILE).pdf

# 清理中间文件，但保留生成的 PDF
clean:
	$(LATEXMK) -c -output-directory=$(BUILD_DIR)
	rm -rf $(BUILD_DIR)/*

# 清理所有文件，包括生成的 PDF
cleanall: clean
	rm -f $(MAIN_FILE).pdf
	rm -rf $(BUILD_DIR)
