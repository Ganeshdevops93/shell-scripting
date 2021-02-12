#help:
#	@printf "\033[32mRoboShop Shell Scripting Make Options$(version)\033[0m\n\n"
#    @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
#common:
#	@sh components/common.sh
#cart: common ##Install Cart Component
#	@sh components/cart.sh
#catalogue: common ##Install Catalogue Component
#	@sh components/catalogue.sh
#.PHONY: frontend
#frontend: common ##Install Frontend Component
#	@sh components/frontend.sh

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

common:
	@sh components/common.sh

cart: common
cart:					## Install Cart Component
	@echo does something

catalogue: common
catalogue:				## Install Catalogue Component
	@echo does something

