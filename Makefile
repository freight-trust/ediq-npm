SHELL=/bin/bash

# to see all colors, run
# bash -c 'for c in {0..255}; do tput setaf $c; tput setaf $c | cat -v; echo =$c; done'
# the first 15 entries are the 8-bit colors

# define standard colors
BLACK        := $(shell tput -Txterm setaf 0)
RED          := $(shell tput -Txterm setaf 1)
GREEN        := $(shell tput -Txterm setaf 2)
YELLOW       := $(shell tput -Txterm setaf 3)
LIGHTPURPLE  := $(shell tput -Txterm setaf 4)
PURPLE       := $(shell tput -Txterm setaf 5)
BLUE         := $(shell tput -Txterm setaf 6)
WHITE        := $(shell tput -Txterm setaf 7)

RESET := $(shell tput -Txterm sgr0)

# set target color
TARGET_COLOR := $(BLUE)

POUND = \#

.PHONY: no_targets__ info help build deploy doc
	no_targets__:

.DEFAULT_GOAL := help

registry: ## fetch the schema registry
	@echo "${BLACK}BLACK${RESET}"
	@echo "${RED}RED${RESET}"
	@echo "${GREEN}GREEN${RESET}"
	@echo "${YELLOW}YELLOW${RESET}"
	@echo "${LIGHTPURPLE}LIGHTPURPLE${RESET}"
	@echo "${PURPLE}PURPLE${RESET}"
	@echo "${BLUE}BLUE${RESET}"
	@echo "${WHITE}WHITE${RESET}"

-epath:  ## help for job 1
	@echo "valuate the XPath expression"
	@$(MAKE) epath
	@echo "EDI Message Output"

--format:  ## transaction schema (optional)
	@echo ""

--schema-file:  ## format output, one segment per line
	@echo ""

help:
	@echo ""
	@echo "    ${BLACK}:: ${RED}EDIQ - XPath/QL For X12/EDIFACT${BLACK}::${RESET}"
	@echo ""
	@echo "            evaluate the XPath expression '$(POUND)$(POUND) using `ediq`"
	@echo ""
	@echo ""
	@echo " usage: ediq [OPTION]... [FILE]  "
	@echo "Example:"
	@echo "  | ediq:  $(POUND)$(POUND)  --epath <arg> "
	@echo "  | 	@echo \"evaluate the XPath expression\""
	@echo ""
	@echo "${BLACK}-----------------------------------------------------------------${RESET}"
	@grep -E '^[a-zA-Z_0-9%-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "${TARGET_COLOR}%-30s${RESET} %s\n", $$1, $$2}'


# vim:noexpandtab:ts=8:sw=8:ai