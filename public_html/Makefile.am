MAKEFLAGS = --no-builtin-rules

SUFFIXES:
SUFFIXES: %.php

CI_DIR := CI-@CI_VERSION@

all-local: index.php

# TODO see how to call install
# TODO sed new values should be given by configure
index.php: @CI_SRCDIR@/index.php
	cp -a $^ $@
	$(SED) -i -e "s@system_path = 'system'@system_path = '../$(CI_DIR)/system'@" \
		-e "s@application_folder = 'application'@application_folder = '../app'@" \
		-e "s@view_folder = ''@view_folder = '../app/views'@" \
		index.php

.htaccess: htaccess
	$(INSTALL_DATA) -T $^ $@

clean-local:
	-rm -f index.php
	-rmdir public_html

uninstall-hook:
	-rmdir $(prefix)/public_html

public_htmldir = $(prefix)/public_html
dist_public_html_DATA = index.php .htaccess
