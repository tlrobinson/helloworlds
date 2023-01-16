LANGUAGES=$(shell ls -d */ | cut -f1 -d'/')

run: $(addprefix run-,$(LANGUAGES))
run-%:
	cd $* && time $(MAKE) run

clean: $(addprefix clean-,$(LANGUAGES))
clean-%:
	-cd $* && $(MAKE) clean

install: $(addprefix install-,$(LANGUAGES))
install-%:
	cd $* && $(MAKE) install
