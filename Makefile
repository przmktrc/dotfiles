FORCED_FLAG := $(if $(filter force,$(MAKECMDGOALS)),-f,)

force:
	@echo Overriding existing config files...

deploy :
	ln $(FORCED_FLAG) .clang-format ~/.clang-format
	ln $(FORCED_FLAG) .clang-tidy ~/.clang-tidy
	ln $(FORCED_FLAG) .style.yapf ~/.style.yapf
