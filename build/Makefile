include Rules.mak

UI:
	:
	
all: UI
	for i in {1..$(NUM_TEX_INVOCATIONS)}; do\
		$(TEX) $(TEXOPTS) $(TEX_FILE_DIR)/flowWeaver.tex ;\
	done
	
clean:
	rm -rf $(OUT_FILE_DIR)/$(OUT_FILE_NAME).$(OUT_FILE_EXT)
	rm -rf tmp