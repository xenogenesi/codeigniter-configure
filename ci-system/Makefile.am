MAKEFLAGS = --no-builtin-rules

SUFFIXES:
SUFFIXES: %.php

CI_DIR := CI-@CI_VERSION@

SYSTEM_CORE := system/core/CodeIgniter.php

SYSTEM_CORE += system/core/Common.php \
        system/core/Benchmark.php \
        system/core/Hooks.php \
        system/core/Config.php \
        system/core/Log.php \
        system/core/Exceptions.php \
        system/core/Utf8.php \
        system/core/URI.php \
        system/core/Router.php \
        system/core/Output.php \
        system/core/Security.php \
        system/core/Input.php \
        system/core/Lang.php \
        system/core/Controller.php \
        system/core/Loader.php

SYSTEM_CORE_COMPAT :=  system/core/compat/mbstring.php \
        system/core/compat/hash.php \
        system/core/compat/password.php \
        system/core/compat/standard.php

SYSTEM_HELPERS :=

if ENABLE_URL_HELPER
SYSTEM_HELPERS += system/helpers/url_helper.php
endif

SYSTEM_LIBRARIES_SESSION :=
SYSTEM_LIBRARIES_SESSION_DRIVERS :=

if ENABLE_SESSION
SYSTEM_LIBRARIES_SESSION += system/libraries/Session/Session.php \
		system/libraries/Session/Session_driver.php

SYSTEM_LIBRARIES_SESSION_DRIVERS += system/libraries/Session/drivers/Session_files_driver.php
endif

SYSTEM_ALL = $(SYSTEM_CORE) \
		$(SYSTEM_CORE_COMPAT) \
		$(SYSTEM_LIBRARIES_SESSION) \
		$(SYSTEM_LIBRARIES_SESSION_DRIVERS) \
		$(SYSTEM_HELPERS)

all-local: $(SYSTEM_ALL)

$(SYSTEM_ALL):
	$(MKDIR_P) $(dir $@)
	$(INSTALL_DATA) @CI_SRCDIR@/$@ $(dir $@)

clean-local:
	-rm -f $(SYSTEM_ALL)
	-rmdir system/core/compat system/core system

#TODO need a better "auto" way to track created directories
uninstall-hook:
	-rmdir $(prefix)/$(CI_DIR)/system/core/compat $(prefix)/$(CI_DIR)/system/core \
		$(prefix)/$(CI_DIR)/system/libraries/Session $(prefix)/$(CI_DIR)/system/libraries \
		$(prefix)/$(CI_DIR)/system/helpers \
		$(prefix)/$(CI_DIR)/system $(prefix)/$(CI_DIR)

cidir = $(prefix)/$(CI_DIR)
nobase_dist_ci_DATA = $(SYSTEM_ALL)