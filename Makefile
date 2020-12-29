CANDIDATES := $(wildcard .??*)
EXCLUSIONS := .DS_Store .git .gitmodules .gitignore .config backup
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))
CONFIGDIRS := $(wildcard ./.config/*)

all:

list: ## Show dot files in this repo
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)
	@$(foreach val, $(CONFIGDIRS), /bin/ls -dF $(val);)

backup:
	@echo '==> backup exist dotfiles to ./backup/'
	@echo ''
	@mkdir -p ./backup
	@$(foreach val, $(DOTFILES), cp -rv ~/$(val) ./backup/;)

deploy:
	@echo '==> Start to deploy dotfiles to home directory.'
	@echo ''
	@$(foreach val, $(CONFIGDIRS), rm -rfv $(HOME)/.config/$(notdir $(val)))
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@mkdir -p $(HOME)/.config
	@$(foreach val, $(CONFIGDIRS), ln -sfnv $(abspath $(val)) $(HOME)/.config/$(notdir $(val));)
