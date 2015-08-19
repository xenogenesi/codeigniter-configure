MAKEFLAGS = --no-builtin-rules

SUFFIXES:
SUFFIXES: %.php

APP_CONFIG := config/constants.php

APP_CONFIG += config/config.php

APP_CONTROLLERS :=

APP_VIEWS :=

if ENABLE_WELCOME
APP_CONFIG += config/routes.php
APP_VIEWS += views/welcome_message.php
APP_CONTROLLERS += controllers/Welcome.php
endif

APP_VIEWS_ERRORS_HTML := views/errors/html/error_php.php \
        views/errors/html/error_general.php \
        views/errors/html/error_exception.php \
        views/errors/html/error_404.php

APP_ALL := $(APP_CONFIG) \
	$(APP_VIEWS) \
	$(APP_VIEWS_ERRORS_HTML) \
	$(APP_CONTROLLERS)

all-local: $(APP_ALL)

# TODO "logs/" may be given by config.php
install-data-hook:
	$(MKDIR_P) $(prefix)/app/logs

clean-local:
	-rm -f $(APP_ALL)
	-rmdir config views/errors/html views/errors views

# TODO prefix could be empty?
uninstall-hook:
	-rmdir $(prefix)/app/config $(prefix)/app/logs $(prefix)/app/views/errors/html \
		$(prefix)/app/views/errors $(prefix)/app/views $(prefix)/app/controllers \
		$(prefix)/app

# TODO use install to create directories while installing?
$(APP_ALL):
	$(MKDIR_P) $(dir $@)
	$(INSTALL_DATA) @CI_SRCDIR@/application/$@ $(dir $@)

appdir = $(prefix)/app
nobase_app_DATA = $(APP_ALL)
